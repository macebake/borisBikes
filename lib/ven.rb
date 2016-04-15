require_relative 'docking_station'

class Van

  def pickup_broken_bikes(station)
    fail "No bikes" if station.bikes.empty?
    station.bikes.pop
  end
end
