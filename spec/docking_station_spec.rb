require 'Docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  docking_station = DockingStation.new
  bike = docking_station.release_bike

  it 'relase a bike' do
    expect(bike).to be_instance_of Bike
  end

  it 'check if its working' do
    expect(bike.working?).to eq true
  end

end
