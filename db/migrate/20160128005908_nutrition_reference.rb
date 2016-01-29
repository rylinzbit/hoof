class NutritionReference < ActiveRecord::Migration
  def change
  	add_reference :posts, :nutrition, index:true
  end
end
