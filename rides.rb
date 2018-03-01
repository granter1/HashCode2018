require_relative 'ride.rb'

class Rides
  attr_reader :ride_list

  def initialize(rides = nil)
    @ride_list = rides.equal?(nil) ? [] : rides
  end

  def add_ride(ride)
    @ride_list.push(ride)

  end

  def sort_by_earliest
    @ride_list=@ride_list.sort{|c1,c2| c1.start <=> c2.start}
  end

  def to_s
    str = ''

    @ride_list.each do |ride|
      str += ride.to_s + " "
    end

    return str
  end
end