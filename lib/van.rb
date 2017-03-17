class Van

  def initialize
    @van = [ ]
  end

  def load(bmx)
    @van << bmx
  end

  def release_bike
    @van.pop
  end
end
