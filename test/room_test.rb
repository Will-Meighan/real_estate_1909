require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/room'

class RoomTest < Minitest::Test

  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_it_exists
    assert_instance_of Room, @room
  end

  def test_it_has_a_category
    assert_equal :bedroom, @room.category
  end

  def test_room_area_is_length_times_width
    assert_equal 130, @room.length * @room.width
  end

end
