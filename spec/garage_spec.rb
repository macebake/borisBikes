require 'garage.rb'

describe Garage do
it 'expects garage to fix broken bikes' do
  bike = [Bike.new]
  garage = Garage.new(bike)
  garage.repair
  expect(bike).not_to include(true)
end

end
