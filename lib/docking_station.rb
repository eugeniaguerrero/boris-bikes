class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @all_bikes = []
  end

  def dock(bmx)
    fail 'Docking station full' if full?
    @all_bikes << bmx
  end


  def release_bike
    fail 'No bikes available' if empty?
    @all_bikes.pop
  end

  private
  attr_reader :bmx

  def full?
    @all_bikes.count >= capacity
  end

  def empty?
   @all_bikes.empty?
  end

end
