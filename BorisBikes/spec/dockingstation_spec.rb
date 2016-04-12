require 'dockingstation'

describe DockingStation do
	it "releases a bike" do 
	expect(DockingStation.release_bike).to eq(true)
	end
end