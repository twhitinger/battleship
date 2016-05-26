require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require_relative '../lib/game_play'
require_relative '../lib/user_board'
require_relative '../lib/user_game_flow'


class GamePlayTest < Minitest::Test

  def test_create_a_game_play_class
    gameplay = GamePlay.new
    assert_equal gameplay, gameplay
  end

  def test_create_index_from_user_input_lookup_table
    gameplay = GamePlay.new
    array_index = "D4"
    lookup_table = [{"A1" => 0},{"A2" => 1},{"A3" => 2},{"A4" => 3},
      {"B1" => 4},{"B2" => 5},{"B3" => 6},{"B4" => 7},
      {"C1" => 8},{"C2" => 9},{"C3" => 10},{"C4" => 11},
      {"D1" => 12},{"D2" => 13},{"D3" => 14},{"D4" => 15}]
    array_index = lookup_table.find{|x|x[array_index]}.values[0]
    assert_equal array_index, 15
  end

  def test_gameplay_run
    gameplay = GamePlay.new
    lookup_table = [{"A1" => 0},{"A2" => 1},{"A3" => 2},{"A4" => 3},
      {"B1" => 4},{"B2" => 5},{"B3" => 6},{"B4" => 7},
      {"C1" => 8},{"C2" => 9},{"C3" => 10},{"C4" => 11},
      {"D1" => 12},{"D2" => 13},{"D3" => 14},{"D4" => 15}]
    array_index = "A6"
    while array_index.length != 2 || lookup_table.find{|x| x[array_index] } == nil
      array_index = "A4"
    end
    assert_equal array_index, "A4"
  end

  def test_create_array_represent_ship_placement
  @board = UserBoard.new
  @game = UserGameFlow.new
  @index_array = [1,2,3,4,5]
  @game_board = @board.overwrite_the_false_values_to_true_in_array(@index_array)
  outcome = ["false", true, true, true, true, true, "false", "false", "false", "false", "false", "false", "false", "false", "false", "false"]
  assert_equal outcome, @game_board
  end

end
