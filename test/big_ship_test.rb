require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/big_ship'

class BigShipTest < Minitest::Test

  def test_create_a_game_play_class
    bigship = BigShip.new
    assert_equal bigship, bigship
  end

  def test_random_computer_position_equal_hash
    bigship = BigShip.new
    bigship.random_computer_position
    assert_equal Hash, bigship.random_computer_position.class
  end

  def test_ending_computer_position_equal_array
    bigship = BigShip.new
    bigship.ending_computer_position_large
    assert_equal Array, bigship.ending_computer_position_large.class
  end

end
