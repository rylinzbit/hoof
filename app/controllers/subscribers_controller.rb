class SubscribersController < ApplicationController
	def new
	end

	def create
		token = params[:stripeToken]

		customer = Stripe::Customer.create(
			card: token,
			plan: 3333,
			email: User.find(session[:user_id]).email
			)
		current_user = User.find(session[:user_id])
		current_user[:subscribed] = true
		current_user[:stripe_id] = customer.id
		if current_user.save
			redirect_to '/homepages/index'
		else
			redirect_to '/users/new'
		end
	end
end
