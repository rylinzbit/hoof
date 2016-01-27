class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :password_digest
      t.date :birthday
      t.text :fitness_goals
      t.text :lifestyle
      t.string :organization
      t.integer :week
      t.integer :num_wo_submit
      t.integer :avail_video

      t.timestamps null: false
    end
  end
end
