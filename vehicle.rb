class Vehicle

  attr_reader :id
  attr_accessor :x_pos, :y_pos, :is_assigned_trip

  def initialize(id)
    @id = id
    @x_pos, @y_pos = 0, 0
    @is_assigned_trip = false
  end

  def distance_from_point(x, y)
    (x-@x_pos).abs + (y-@y_pos).abs
  end

  def to_s
    "#{@id}"
  end
end