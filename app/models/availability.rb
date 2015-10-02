class Availability < ActiveRecord::Base
  belongs_to :property
  has_many :bookings, through: :property

   def self.search(query = {})
    # where(:title, query) -> This would return an exact match of the query
    search_scope = joins(:property)
    search_scope = search_scope.where("availabilities.capacity >= ?", "#{query.capacity}") if query.capacity.present?
    search_scope = search_scope.where("availabilities.start_date <= ?", "#{query.start_date}") if query.start_date.present?
    search_scope = search_scope.where("availabilities.end_date >= ?", "#{query.end_date}") if query.end_date.present?
    search_scope = search_scope.where("properties.country like ?", "#{query.country}") if query.country.present?
    search_scope = search_scope.where("properties.price_night <= ?", "#{query.price_night}") if query.price_night.present?
    search_scope
  end
end
