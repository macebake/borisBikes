require_relative 'bike'

class DockingStation
  station = DockingStation.new
  attr_reader :bike

  @bike = Bike.new

  def release_bike
    @bike
  end

  def dock(bike)
    return @bike
  end

end
