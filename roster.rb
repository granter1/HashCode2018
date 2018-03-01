require_relative 'fleet'
require_relative 'rides'

class Roster

  def initialize
    @roster = {}
  end

  def allocate_rides(fleet, rides)
    rides.ride_list.each_with_index do |ride|
      #if fleet.cars[0].distance + ride.distance < ride.time
      @roster[ride] = fleet.vehicles[0]
    end
  end
end