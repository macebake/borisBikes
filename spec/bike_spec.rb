require 'Bike'
describe Bike do
  it {expect(subject).to respond_to :broken?}
  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
