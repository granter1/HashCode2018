require_relative 'ride.rb'
require_relative 'fleet.rb'
require_relative 'vehicle.rb'

first_line=true;
rides=[]
begin
  IO.foreach('a_example.in') do |line|
    if first_line
      data=line.split
      rows=data[0].to_i
      columns=data[1].to_i
      @vehicle_count=data[2].to_i
      rideCount=data[3].to_i
      bonusForOnTime=data[4].to_i
      stepCount=data[5].to_i
      first_line=false
    else
      data=line.split
      ride=Ride.new(data[0].to_i,data[1].to_i,data[2].to_i,data[3].to_i,data[4].to_i,data[5].to_i)
      rides.push(ride)

    end
  end

  fleet = Fleet.new
  for i in 0..@vehicle_count
    fleet.add_vehicle(Vehicle.new(i+1))
  end
end