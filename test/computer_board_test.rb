require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/computer_board'



class ComputerBoardTest < Minitest::Test

  def test_create_a_game_play_class
    computer_board = ComputerBoard.new
    assert_equal computer_board, computer_board
  end

end
