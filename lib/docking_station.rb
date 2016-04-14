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
    fail "No working bikes available" if (@bikes.last).working? == false
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

end
