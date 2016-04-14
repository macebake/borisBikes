require 'bike'
describe Bike do

  it {is_expected.to respond_to :working?}

  it {is_expected.to respond_to :report_broken}

  describe "#report_broken" do
    it "if bike is reported broken status of working? changes to false" do
      bike = Bike.new
      bike.report_broken
      expect(bike.working?). to eq false
    end
  end
end
