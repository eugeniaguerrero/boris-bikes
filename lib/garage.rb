require_relative 'van'

class Garage

  def initialize
    @garage = []
  end

  def collect(van)
    @garage << van.release_bike
  end

end
