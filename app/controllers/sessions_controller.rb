class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by email: params[:email]
		if user && user.authenticate(params[:password]) && user.subscribed
			session[:user_id] = user.id
			redirect_to "/homepages/index"
		elsif !user.subscribed
			flash[:errors] = ["You don't have an active subscription"]
			redirect_to :root
		else
			flash[:errors] = ["Invalid combination"]
			redirect_to :root
		end
	end

	def destroy
		session.clear
		redirect_to :root
	end
end
