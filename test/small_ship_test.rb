require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/small_ship'

class SmallShipTest < Minitest::Test

  def test_create_a_game_play_class
    smallship = SmallShip.new
    assert_equal smallship, smallship
  end

  def test_random_computer_position_equal_hash
    smallship = SmallShip.new
    smallship.random_computer_position
    assert_equal Hash, smallship.random_computer_position.class
  end

  def test_ending_computer_position_equal_array
    smallship = SmallShip.new
    smallship.ending_computer_position
    assert_equal Array, smallship.ending_computer_position.class
  end

end
