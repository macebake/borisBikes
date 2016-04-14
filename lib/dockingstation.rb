require_relative 'bike'

class DockingStation
  station = DockingStation.new
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
  #  bike = Bike.new
  #  bike.report_broken
    if empty?
      raise "no bikes available"
    end
    @bikes.each do |bike|
      if bike.broken? == false
        return bike
      else
        raise "no working bikes"
      end
    end
  #  @bikes.pop
  end

  def dock(bike)
    full? ? (raise "no docks available") : (@bikes << bike)
  end

  def to_repair
  end


  private
  def empty?
    (@bikes.empty?)? true : false
  end

  def full?
    (@bikes.length >= @capacity)? true : false
  end

end
