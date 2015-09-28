class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :country
      t.float :latitude
      t.float :longitude
      t.decimal :price_night
      t.string :beach_name
      t.integer :capacity
      t.string :name

      t.timestamps null: false
    end
  end
end
