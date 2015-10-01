class Property < ActiveRecord::Base
  has_many :availabilities
  belongs_to :user
  has_many :bookings
end
