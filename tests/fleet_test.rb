require 'test/unit'
require_relative '../fleet.rb'
require_relative '../vehicle.rb'

class FleetTest < Test::Unit::TestCase

  def setup
    @fleet = Fleet.new
    @fleet.add_vehicle(Vehicle.new(1))
    @fleet.add_vehicle(Vehicle.new(2))
    @fleet.add_vehicle(Vehicle.new(3))

    @fleet.vehicles[1].x_pos = 2
    @fleet.vehicles[1].y_pos = 3
    @fleet.vehicles[2].x_pos = 4
    @fleet.vehicles[2].y_pos = 4
  end

  def test_sort_by_range_ascending
    @fleet.sort_by_dis_from_start_point!(2, 2)
    assert_equal(2, @fleet.vehicles[0].id, 'Sort order incorrect')
    assert_equal(3, @fleet.vehicles[1].id, 'Sort order incorrect')
    assert_equal(1, @fleet.vehicles[2].id, 'Sort order incorrect')
  end

end