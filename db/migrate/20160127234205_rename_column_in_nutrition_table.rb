class RenameColumnInNutritionTable < ActiveRecord::Migration
  def change
  	rename_column :nutritions, :type, :category
  end
end
