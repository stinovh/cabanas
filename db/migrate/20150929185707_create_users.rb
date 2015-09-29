class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :phone_number
      t.string :last_name
      t.string :city
      t.integer :zipcode
      t.string :country
      t.string :street_name
      t.integer :house_number
      t.string :user_name
      t.decimal :balance

      t.timestamps null: false
    end
  end
end
