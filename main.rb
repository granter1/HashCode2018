require_relative 'ride.rb'

first_line=true;
rides=[]
begin
  IO.foreach('a_example.in') do |line|
    if first_line
      data=line.split
      rows=data[0]
      columns=data[1]
      vehiclecount=data[2]
      rideCount=data[3]
      bonusForOnTime=data[4]
      stepCount=data[5]
      first_line=false
    else
      data=line.split
      ride=Ride.new(data[0].to_i,data[1].to_i,data[2].to_i,data[3].to_i,data[4].to_i,data[5].to_i)
      puts ride.distance
      rides.push(ride)
    end
  end
end