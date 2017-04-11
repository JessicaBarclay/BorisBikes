require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike

end

=begin
class Bike
  def working?
    true

    end
end
=end
