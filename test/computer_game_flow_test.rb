require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/computer_game_flow'



class ComputerGameFlowTest < Minitest::Test

  def test_create_a_game_play_class
    computer_gameflow = ComputerGameFlow.new
    assert_equal computer_gameflow, computer_gameflow
  end
end
