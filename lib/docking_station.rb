require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bikes)
    fail 'Docking station full' if full?
    @bikes << bikes
  end

  attr_reader :bikes

  private

  def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes.empty?
  end

end

# docking_station = DockingStation.new(50)
