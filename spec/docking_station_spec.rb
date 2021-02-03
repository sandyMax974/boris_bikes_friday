require 'Docking_station'

describe DockingStation do
	it { is_expected.to respond_to(:release_bike)}
	it { is_expected.to respond_to(:check_bike)}

  docking_station = DockingStation.new
  bike = Bike.new

	it 'relase a bike' do
		bike = docking_station.release_bike
    expect(bike).to be_instance_of Bike
  end

  it 'check if its working' do
    expect{bike.working?}.to eq true
	end

	# dock is a method held by DockingStation, taking an argument of (bike)

	it 'can dock a bike' do
		expect(docking_station.dock(bike)).to eq "Bike Docked!"
	end

	it 'should return true if a bike is available' do
    docking_station.dock(bike)
		expect(docking_station.check_bike).to be true
	end

  it 'return error if release method called on empty station' do
    expect { docking_station.release_bike }.to raise_error("No bikes avaliable")
  end
end
