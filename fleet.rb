class Fleet
  attr_reader :vehicles

  def initialize(vehicles = nil)
    @vehicles = vehicles.equal?(nil) ? [] : vehicles
  end

  def add_vehicle(vehicle)
    @vehicles.push(vehicle)
  end
end