class Fleet
  attr_reader :cars

  def initialize(cars = nil)
    @cars = cars.equal?(nil) ? [] : cars
  end

  def add_car(car)
    @cars.push(car)
  end
end