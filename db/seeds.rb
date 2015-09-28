# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Property.create(name: "Cosy cabana at the Miami Seaside", country: 'United States', latitude: 25.760791, longitude: -80.189139, price_night: 100, beach_name: "Miami Beach", capacity: 4)
Property.create(name: "Cosy cabana at the Belgian Seaside", country: 'Belgium', latitude: 51.350835, longitude: 3.278367, price_night: 150, beach_name: "Albert Beach", capacity: 2)

Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 4, property_id: 1 )
Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 2, property_id: 2 )
