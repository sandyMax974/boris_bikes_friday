require 'Bike'

describe Bike do

  it { is_expected.to respond_to(:working?)}

  describe '#broken' do
    it 'is set true if broken' do
      expect(Bike.new.broken).to be false
    end
  end

  describe '#report_broken' do
    it 'change the status of broken attribute' do
      bike = Bike.new
      expect { bike.report_broken }.to change { bike.broken } # .from(false).to true
    end
  end

end
