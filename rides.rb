require_relative 'ride.rb'

class Rides
  attr_reader :rides

  def initialize(rides = nil)
    @rides = rides.equal?(nil) ? [] : rides
  end

  def add_ride(ride)
    @rides.push(ride)
  end
end