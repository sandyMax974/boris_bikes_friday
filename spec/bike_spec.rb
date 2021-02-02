require 'Bike'

describe 'Bike' do
  it 'check bike exists' do
    expect(Bike.new.is_a?(Bike)).to eq true
  end
  it 'check working method' do
    expect(Bike.new.respond_to?(:working?))
  end
end
