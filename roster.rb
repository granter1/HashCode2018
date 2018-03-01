require_relative 'fleet'
require_relative 'rides'

class Roster

  def initialize
  end

  def allocate_rides(fleet, rides)
    rides.ride_list.each_with_index do |ride|
      fleet.vehicles.each_with_index do |vehicle|
        if vehicle.can_assign?(ride)
          vehicle.assign(ride)
        end
      end
    end
  end
end