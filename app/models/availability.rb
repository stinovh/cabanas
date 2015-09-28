class Availability < ActiveRecord::Base
  belongs_to :property

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("capacity = ?", "#{query}")
  end
end
