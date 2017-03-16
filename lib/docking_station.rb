class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :all_bikes

  def initialize
    @all_bikes = []
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @all_bikes << bike
  end


  def release_bike
    fail 'No bikes available' if empty?
    @all_bikes.pop
  end

  private

  def full?
    @all_bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
   @all_bikes.empty?
  end

end
