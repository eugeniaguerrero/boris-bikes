require './lib/van'
require './lib/bike'

bmx = Bike.new
van = Van.new
van.load(bmx)
