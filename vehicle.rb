class Vehicle

  attr_reader :id
  attr_accessor :x_pos, :y_pos, :is_assigned_trip

  def initialize(id)
    @rides=Rides.new
    @id = id
    @x_pos, @y_pos = 0, 0
    @is_assigned_trip = false
    @time_free=0
  end

  def can_assign?(ride)
    if @time_free + distance_from_point(ride.rowStart,ride.columnStart) <= ride.start && @time_free+distance_from_point(ride.rowStart,ride.columnStart)+ride.distance<ride.finish
      return true
    else
      return false
    end
  end

  def can_assign_even_if_late?(ride)
    if @time_free + distance_from_point(ride.rowStart,ride.columnStart) <= ride.start
      return true
    else
      return false
    end
  end

  def can_assign_with_late_start?(ride)
    if @time_free+distance_from_point(ride.rowStart,ride.columnStart)+ride.distance<ride.finish
      return true
    else
      return false
    end
  end

  def assign(ride)
    @time_free+=distance_from_point(ride.rowStart,ride.columnStart)+ride.distance
    @rides.add_ride(ride)
    @x_pos, @y_pos = ride.rowFinish, ride.columnFinish
  end

  def distance_from_point(x, y)
    (x-@x_pos).abs + (y-@y_pos).abs
  end

  def to_s
    @rides.ride_list.size.to_s << ' ' << @rides.to_s << "\n"
  end
end