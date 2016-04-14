require 'docking_station'

describe DockingStation do
  let(:bike) { Bike.new }

  describe '#releasebike' do
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it "has a working bike" do
    subject.dock(bike)
    expect(subject.release_bike.working?).to eq true
  end

  it "return docked bikes" do
    subject.dock(bike)
    expect(subject.bikes[0]).to eq bike
  end

  it "raises exception if no bikes in docking station" do
    expect {subject.release_bike}.to raise_error("No bikes")
  end

  describe '#dock' do
    it "raises exception if docking station is full" do
      20.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error("Docking Station full")
    end
  end
end
