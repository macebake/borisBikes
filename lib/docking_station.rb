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
        end_with_working.pop
  end

  def dock(bike)
    fail "Docking Station full" if full?
    @bikes << bike
  end

  def end_with_working
    (@bikes).sort_by {|x| [x.working? ? 1 : 0, x:@bikes]}
  end

private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

  def last_bike_broken?
    end_with_working.last.working? == false
  end



end
