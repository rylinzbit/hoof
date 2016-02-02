class SessionsController < ApplicationController 
	def new
	end

	def create
		user = User.find_by email: params[:email]
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to "/homepages/index"
		else
			flash[:errors] = ["Invalid combination"]
			redirect_to '/landing/index'
		end
	end

	def destroy
		session.clear
		redirect_to '/landing/index'
	end
end
