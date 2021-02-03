require 'Docking_station'

describe DockingStation do
  # it 'check if Dockingstation exists' do
  #   expect(DockingStation.new.is_a?(DockingStation)).to eq true
  # end

  # it {to respond_to(release_bike)}
  # it 'check if responds to release_bike' do
  #   expect(DockingStation.new.respond_to?(:release_bike))
  # end

  it { is_expected.to respond_to(:release_bike)}
end
