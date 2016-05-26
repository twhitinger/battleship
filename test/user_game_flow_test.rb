require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/user_game_flow'



class UserGameFlowTest < Minitest::Test

  def test_create_a_game_play_class
    user_gameflow = UserGameFlow.new
    assert_equal user_gameflow, user_gameflow
  end
end
