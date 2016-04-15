require 'ven'
require 'docking_station'

describe Van do
  it {is_expected.to respond_to(:pickup_broken_bikes).with(1).argument }

  it 'picks up a bike' do
    bike = Bike.new
    station = DockingStation.new
    station.dock(bike)
    expect(subject.pickup_broken_bikes(station)).to eq(bike)
  end

end
