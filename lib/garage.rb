require 'bike.rb'

class Garage

  def initialize(array)
  @array = array
  end

  def repair
  @array.map {|bike| bike.fix}
  end

end