require_relative 'ride.rb'

class Rides
  attr_reader :rides

  def initialize(rides = nil)
    @rides = rides.equal?(nil) ? [] : rides
  end

  def add_ride(ride)
    @rides.push(ride)
  end
  def sort_by_earliest
    @rides=@rides.sort{|c1,c2| c1.start <=> c2.start}
  end
end