require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/battleship_placement'

class BattleShipPlacementTest < Minitest::Test

  def test_create_a_game_play_class
    battleship = BattleShipPlacement.new
    assert_equal battleship, battleship
  end

  def test_random_computer_position_equal_hash
    battleship = BattleShipPlacement.new
    battleship.random_computer_position
    assert_equal Hash, battleship.random_computer_position.class
  end

  def test_ending_computer_position_equal_array
    battleship = BattleShipPlacement.new
    battleship.ending_computer_position_large
    assert_equal Array, battleship.ending_computer_position_large.class
  end

end
