# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Property.create(name: "Cosy cabana at the Miami Seaside", country: 'US', latitude: 25.760791, longitude: -80.189139, price_night: 100, beach_name: "Miami Beach", capacity: 4)
Property.create(name: "Cosy cabana at the Belgian Seaside", country: 'BE', latitude: 51.350835, longitude: 3.278367, price_night: 150, beach_name: "Albert Beach", capacity: 2)
Property.create(name: "Cheap Cabana", country: 'NL', latitude: 25.760791, longitude: -80.189139, price_night: 35, beach_name: "Ost Amsterdam", capacity: 4)
Property.create(name: "Chic Francais", country: 'FR', latitude: 51.350835, longitude: 3.278367, price_night: 150, beach_name: "Touquet", capacity: 7)
Property.create(name: "Cabane duplex au Zoute", country: 'BE', latitude: 25.760791, longitude: -80.189139, price_night: 360, beach_name: "Knokke le zoute", capacity: 6)
Property.create(name: "Cabane dans le arbres", country: 'BE', latitude: 51.350835, longitude: 3.278367, price_night: 180, beach_name: "foret de namur", capacity: 2)
Property.create(name: "Cabana at  Miami Seaside", country: 'US', latitude: 25.760791, longitude: -80.189139, price_night: 100, beach_name: "Miami Beach", capacity: 4)
Property.create(name: "Cabana at Brussels canal", country: 'BE', latitude: 51.350835, longitude: 3.278367, price_night: 150, beach_name: "Brussels Canal", capacity: 9)

Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 4, property_id: 1 )
Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 2, property_id: 2 )
Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 4, property_id: 3 )
Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 2, property_id: 4 )
Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 4, property_id: 5 )
Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 2, property_id: 6 )
Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 4, property_id: 7 )
Availability.create(start_date:"2015-10-05", end_date:"2015-11-10", capacity: 2, property_id: 8 )
