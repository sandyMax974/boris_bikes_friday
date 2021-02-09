require 'vans'

describe Vans do
  let(:docking_station) { # push broken bikes in array}

  it 'should initialize with an empty Array' do
    expect(subject.boot).to be_an_instance_of Array
  end

  describe '#collect' do
    it 'should put all the broken bikes in the van' do
      subject.collect docking_station
      expect(subject.boot).to satisfy { |bike| bike.broken == true }
    end
  end

end
