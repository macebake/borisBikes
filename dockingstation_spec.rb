require 'dockingstation'

describe DockingStation do
	it "releases a bike" do 
	expect(subject.release_bike).to eq(true)
	end
end