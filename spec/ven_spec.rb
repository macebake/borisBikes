require 'ven'
require 'docking_station'
require 'bike'

describe Van do
  it {is_expected.to respond_to(:pickup_broken_bikes).with(1).argument }

  it 'picks up a bike' do
    bike = Bike.new
    station = DockingStation.new
    station.dock(bike)
    expect(subject.pickup_broken_bikes(station)).to eq(bike)
  end

  it "raises exception if no bikes in docking station" do
  station = DockingStation.new
  expect {subject.pickup_broken_bikes(station)}.to raise_error("No bikes")
  end

  it "raises an exception if bikes are working" do
  station = DockingStation.new
  bike = Bike.new
  bike.report_broken
  station.dock(bike)
  expect {subject.pickup_broken_bikes(station)}.to raise_error("No broken bikes to pick up")
  end

end
