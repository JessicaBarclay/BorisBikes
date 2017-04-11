require_relative 'bike'

class DockingStation
  attr_reader :bike

  # def bike
  #   @bike
  # end

  def release_bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end

=begin
class Bike
  def working?
    true

    end
end
=end
