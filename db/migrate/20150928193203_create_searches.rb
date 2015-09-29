class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :country
      t.decimal :price_night
      t.integer :capacity
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
