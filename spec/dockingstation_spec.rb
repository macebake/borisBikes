require "dockingstation"
 describe DockingStation do
   it 'expects capacity to equal user input or 20' do
     expect(subject.capacity).to eq 20
     station = DockingStation.new(45)
     expect(station.capacity).to eq 45
   end

   describe '#release_bike' do
    it 'raises an error when no bikes available' do
      expect{subject.release_bike}.to raise_error ("no bikes available")
    end

    it 'raises an error when no bikes are working' do
      station = DockingStation.new
      bike = Bike.new
      bike = bike.report_broken
      station.dock(bike)
      expect{station.release_bike}.to raise_error ("no working bikes")
    end

    end
    describe '#dock' do
      it 'raises an error when there are no docks available' do
        DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
        expect{subject.dock(Bike.new)}.to raise_error ("no docks available")
      end
    end
  end
    #expect(newbike).to be_working
