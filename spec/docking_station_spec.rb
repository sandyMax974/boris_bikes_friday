require 'Docking_station'

describe DockingStation do

	it { is_expected.to respond_to(:check_bike)}

  let(:docking_station) { subject } # DockingStation.new
  bike = Bike.new

  it 'check if its working' do
    expect(bike.working?).to eq true
	end

	# dock is a method held by DockingStation, taking an argument of (bike)


	describe '#release_bike' do 

		it 'release a bike' do
			docking_station.dock(bike)
			bike = docking_station.release_bike
			expect(bike).to be_instance_of Bike
		end
	
		it { is_expected.to respond_to(:release_bike)}

		context 'When Docking Station is Empty' do 
			it 'return error if release method called' do
				expect { docking_station.release_bike }.to raise_error("No bikes avaliable")
			end
		end 
	end 

	describe '#dock' do 
		it 'can dock a bike' do
			expect(docking_station.dock(bike)).to eq "Bike Docked!"
		end

		context 'When Docking Station is Full' do 
			it 'return error if dock method called on full station' do
				# allow(docking_station).to receive(:bike_list) {Array.new(20) { Bike.new }} 
				ds = DockingStation.new 
				20.times { ds.dock Bike.new }
				expect { ds.dock(Bike.new) }.to raise_error("Station full")
			end
		end 
	end

	describe '#check_bike' do 
		context 'when a bike is available' do 
			it 'should return true' do
				# docking_station.dock(bike)
				ds = DockingStation.new
				ds.dock Bike.new
				expect(ds.check_bike).to be true
			end
		end
	end

end 