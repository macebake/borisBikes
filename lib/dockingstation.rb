require_relative 'bike'

class DockingStation
  station = DockingStation.new
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = 0
  end

  def release_bike
    empty? ? (raise "no bikes available") : (@bikes -= 1)
  end

  def dock(bike)
    full? ? (raise "no docks available") : (@bikes += 1)
  end

  private
  def empty?
    (@bikes == 0)? true : false
  end

  def full?
    (@bikes >= DEFAULT_CAPACITY)? true : false
  end

end
