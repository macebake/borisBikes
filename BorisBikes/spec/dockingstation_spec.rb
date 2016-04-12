require 'dockingstation'

describe DockingStation do
	it "releases a bike method" do
	expect(subject).to respond_to(:release_bike)
	end

	it "creates a new bike" do
		bike = subject.release_bike
		expect(bike).to be_working
	end
end
