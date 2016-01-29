class NutritionController < ApplicationController
	def index
		render :index
	end

	def vegan
		@vegan = Nutrition.first.posts
		render :vegan
	end

	def paleo
		@paleo = Nutrition.second.posts
		render :paleo
	end

	def vegetarian
		@vegetarian = Nutrition.third.posts
		render :vegetarian
	end

	def gfdf
		@gfdf = Nutrition.fourth.posts
		render :gluten_free
	end
end
