class Availability < ActiveRecord::Base
  belongs_to :property

  def self.search(query = {})
    # where(:title, query) -> This would return an exact match of the query
    where("capacity = ? and start_date <= ? and end_date >= ?", "#{query[:capacity]}", "#{query[:start_date]}", "#{query[:start_date]}")
  end
end
