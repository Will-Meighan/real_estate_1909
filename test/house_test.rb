require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'
require_relative '../lib/room'

class HouseTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
  end

  def test_it_exists
    assert_instance_of House, @house
  end

  def test_it_has_a_price
    assert_equal "$400000", @house.price
  end

  def test_is_has_an_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_no_rooms_listed_initially
    assert_equal [], @house.rooms
  end

  def test_room_1_exists
    assert_instance_of Room, @room_1
  end

  def test_room_2_exists
    assert_instance_of Room, @room_2
  end

  def test_room_1_can_be_added_to_house
    assert_equal @rooms, @house.add_room(@room_1)
  end

  def test_room_2_can_be_added_to_house
    assert_equal @rooms, @house.add_room(@room_2)
  end

end
