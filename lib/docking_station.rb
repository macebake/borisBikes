require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes" if empty?
    fail "No working bikes available" if last_bike_broken?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking Station full" if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

  def last_bike_broken?
    @bikes.last.working? == false
  end

end
