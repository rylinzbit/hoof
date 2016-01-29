class SubscribersController < ApplicationController
	def new
	end

	def update
		token = params[:stripeToken]

		customer = Stripe::Customer.create(
			card: token,
			plan: 3333,
			email: current_user.email
			)
		current_user.subscribed = true
		current_user.stripe_id = customer.id
		current_user.save

		redirect_to '/homepages/index'
	end
end
