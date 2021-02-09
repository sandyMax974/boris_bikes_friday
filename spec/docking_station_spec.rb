require 'docking_station'

describe DockingStation do
  let(:bike) { double :bike }

		it 'should contain 20 bikes by default' do
			expect(subject.capacity).to eq 20
		end

		it 'should take a capacity argument when created' do
			value = 5
			ds = DockingStation.new(value)
			expect(ds.capacity).to eq value
		end

		describe '#release_bike' do
			it 'release a bike' do
				subject.dock Bike.new
				bike = subject.release_bike
				expect(bike).to be_instance_of Bike # => can I use a double here?
			end

			context 'when docking station is empty' do
				it 'raise an error' do
					expect { subject.release_bike }.to raise_error("No bikes avalaible")
				end
			end

			context 'when a bike is broken' do
				it 'raise an error' do
					allow(bike).to receive(:broken) { true }
					subject.dock bike
					expect { subject.release_bike }.to raise_error("Bike is broken")
					end
				end
			end

		describe '#dock' do
			it 'can dock a bike' do
				expect(subject.dock(bike).count).to eq (1)
			end

			context 'when docking station is full' do
				it 'raise error' do
					20.times { subject.dock bike }
					expect { subject.dock(bike) }.to raise_error("Station full")
				end
			end
		end

		describe '#check_bike' do
			context 'when a bike is available' do
				it 'should return true' do
					subject.dock bike
					expect(subject.check_bike).to be true
				end
			end
		end

		describe '#dock_broken' do
			it 'should change the bike status to broken' do
				bike = instance_double('bike', :broken => true, :report_broken => false)
				subject.dock_broken(bike)
				expect(bike.broken).to be true
				# expect { subject.dock_broken(bike) }.to change { bike.broken }.to true
				expect(subject.bikes.count).to eq 1
			end
		end
end
