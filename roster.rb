require_relative 'fleet'
require_relative 'rides'

class Roster

  def initialize
    @roster = {}
  end

  def allocate_rides(fleet, rides)

    rides.ride_list.each_with_index do |ride|
      fleet.sort_by_dis_from_start_point!(ride.rowStart, ride.columnStart)

      i=0
      ride_allocated = false
      while i<fleet.vehicles.size && !ride_allocated
        vehicle = fleet.vehicles[i]
        if vehicle.can_assign?(ride)
          vehicle.assign(ride)
          ride_allocated = true
        end
        i+=1
      end
    end
  end

  def to_s
    str = ''

    inverted_roster = @roster.invert

    inverted_roster.each_key do |key|
      inverted_roster.values_at(key).each do |ride|
        str += ride.to_s + " "
      end
      str += "\n"
    end

    return str
  end
end