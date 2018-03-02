require_relative 'fleet'
require_relative 'rides'

class Roster

  def allocate_rides(fleet, rides)

    rides.ride_list.each do |ride|
      fleet.sort_by_dis_from_start_point!(ride.rowStart, ride.columnStart)
      i=0
      ride_allocated = false
      while i<fleet.vehicles.size && !ride_allocated
        vehicle = fleet.vehicles[i]
        if vehicle.can_assign?(ride)
          vehicle.assign(ride)
          ride.is_assigned = true
          ride_allocated = true
        end
        i+=1
      end

      unless ride_allocated
        i=0
        while i<fleet.vehicles.size && !ride_allocated
          vehicle = fleet.vehicles[i]
          if vehicle.can_assign_even_if_late?(ride)
            vehicle.assign(ride)
            ride.is_assigned = true
            ride_allocated = true
          end
          i+=1
        end
      end

      unless ride_allocated
        i=0
        while i<fleet.vehicles.size && !ride_allocated
          vehicle = fleet.vehicles[i]
          if vehicle.can_assign_with_late_start?(ride)
            vehicle.assign(ride)
            ride.is_assigned = true
            ride_allocated = true
          end
          i+=1
        end
      end
    end
  end

end