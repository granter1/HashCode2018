class Fleet
  attr_reader :vehicles

  def initialize(vehicles = nil)
    @vehicles = vehicles.equal?(nil) ? [] : vehicles
  end

  def add_vehicle(vehicle)
    @vehicles.push(vehicle)
  end

  def sort_by_dis_from_start_point!(start_x, start_y)
    @vehicles.sort!{|v1, v2| v1.distance_from_point(start_x, start_y) <=> v2.distance_from_point(start_x, start_y)}
  end
end