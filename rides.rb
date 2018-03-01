require_relative 'ride.rb'

class Rides
  attr_reader :ride_list

  def initialize(rides = nil)
    @ride_list = rides.equal?(nil) ? [] : rides
  end

  def add_ride(ride)
    @ride_list.push(ride)
  end
end