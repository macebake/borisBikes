require 'docking_station'

describe DockingStation do
  let(:bike) { double(:bike)} #refers to another class

  describe '#releasebike' do
    it 'releases a bike' do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'does not release a bike if it is broken' do
      allow(bike).to receive(:report_broken).and_return(true)
      allow(bike).to receive(:working?).and_return(false)
      bike.report_broken
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error("No working bikes available")
    end
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
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
      expect {subject.dock(Bike.new)}.to raise_error("Docking Station full")
    end

  end

  describe '#intialize' do
    it "allows user to set capacity when creating a new docking station" do
      dock5 = DockingStation.new(5)
      5.times {dock5.dock(double(:bike))}#refers to another class
      expect {dock5.dock(double(:bike))}.to raise_error("Docking Station full")#refers to another class
    end

    it "sets the capacity to DEFAULT_CAPACITY if user does not specify capacity" do
      default_dock = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times {default_dock.dock(double(:bike))}#refers to another class
      expect {default_dock.dock(double(:bike))}.to raise_error("Docking Station full")#refers to another class
    end
  end
end
