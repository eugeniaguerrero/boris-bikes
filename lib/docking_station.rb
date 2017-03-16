require_relative 'Bike'

class DockingStation

attr_reader :bike

def initialize
  @bikes = []
end

def dock(bike)
  fail 'Docking station full' if full?
  @bikes << bike
end


def release_bike
  fail 'No bikes available' if empty?
  @bikes.pop
end


private

def full?
  if @bikes.count >= 20
end

def empty?
 if @bikes.empty?
end
end
