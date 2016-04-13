require_relative 'bike'

class DockingStation
  station = DockingStation.new
  attr_reader :bikes

  def initialize
    @bikes = 0
  end

def release_bike
    raise "no bikes available" if @bikes == 0
    @bikes -= 1
  end

  def dock(bike)
    raise "no docks available" if @bikes >= 20
    @bikes += 1
    end

end
