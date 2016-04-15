require_relative 'docking_station'

class Van

  def pickup_broken_bikes(station)
    station.bikes.pop
  end
end
