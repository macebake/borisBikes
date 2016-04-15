require_relative 'docking_station'
require 'matrix'

class Van

  attr :station

  def initalize(station)
    @van_bikes = []
    @station = station
    @bikes = bikes


end


  def pickup_broken_bikes(station)
    @station = station
    fail "No bikes" if station.bikes.empty?
    fail "No broken bikes to pick up" if last_bike_working?
    @(@station.bikes).pop
  end

  def end_with_broken
    (@station.bikes).sort_by {|x| [x.working? ? 0 : 1, x:@station.bikes]}

  end


  private

  def last_bike_working?
    end_with_broken.last.working? == false
  end
end
