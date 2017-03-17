require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'docks bikes' do
    bmx = double :bike
    expect(subject.dock(bmx)).to eq [bmx]
  end

  describe '#release_bike' do
    it 'releases working bikes' do
      bmx = double :bike
      subject.dock(bmx)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike}.to raise_error 'No bikes available'
    end

    it 'raises an error when attempting to release a broken bike' do
      bmx = double :bike
      bmx.report_broken
      subject.dock(bmx)
      expect{ subject.release_bike}.to raise_error 'Bike is broken'
 end
end

  describe '#dock' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock double :bike }
      expect { subject.dock double(:bike) }.to raise_error 'Docking station full'
    end

    it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end
  describe '#initialize' do
    it 'allows a user to set the capacity' do
      docking_station = DockingStation.new(@capacity)
    end
  end

end
