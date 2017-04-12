require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bikes = Bike.new
      subject.dock(bikes)
      expect(subject.release_bike).to eq bikes
    end

    describe '#release_bike' do
      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end

      describe '#dock'do
        it 'raises an error when docking station full' do
          20.times {subject.dock(Bike.new)}
          expect { subject.dock Bike.new }.to raise_error 'Docking station full'
        end
    end

    end

  end

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes' do
    bikes = Bike.new
    subject.dock(bikes)
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it 'docks something' do
    bikes = Bike.new
    expect(subject.dock(bikes)).to eq [bikes]
  end

end
