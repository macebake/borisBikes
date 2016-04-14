require "dockingstation"
 describe DockingStation do
   describe '#release_bike' do
     it 'raises an error when no bikes available'do
      expect{subject.release_bike}.to raise_error ("no bikes available")
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
