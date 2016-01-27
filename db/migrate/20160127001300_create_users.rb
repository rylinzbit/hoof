class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.date :birthdate
      t.text :fitness_goals
      t.text :lifestyle
      t.string :organization

      t.timestamps null: false
    end
  end
end
