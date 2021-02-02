require 'Docking_station'

describe 'DockingStation' do
  it 'check if Dockingstation exists' do
    expect(DockingStation.new.is_a?(DockingStation)).to eq true
  end
end
