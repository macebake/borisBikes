require "dockingstation"
describe DockingStation do

  it {expect(subject).to respond_to :release_bike}
  it 'releases working bike' do
    newbike = subject.release_bike
    expect(newbike).to be_working
  end
end
