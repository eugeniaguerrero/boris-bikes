require './lib/van'
require './lib/bike'
require './lib/garage'

bmx = Bike.new
van = Van.new
van.load(bmx)
van.release_bike

garage = Garage.new
garage.collect(van)
