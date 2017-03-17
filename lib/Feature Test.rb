require './lib/docking_station'

docking_station = DockingStation.new
bmx = Bike.new
bmx.report_broken
docking_station.dock(bmx)
docking_station.release_bike
