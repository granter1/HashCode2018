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
      Ride=Ride.new(data[0],data[1],data[2],data[3],data[4],data[5])
      rides.push(Ride)

    end
  end
end