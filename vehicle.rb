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
    if @time_free+distance_from_point(ride.rowStart,ride.columnStart)+ride.distance<ride.finish
      return true
    else
      return false
    end
  end
  def assign(ride)

  end
  def distance_from_point(x, y)
    (x-@x_pos).abs + (y-@y_pos).abs
  end

  def to_s
    "#{@id}"
  end
end