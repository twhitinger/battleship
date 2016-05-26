require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/user_board'



class UserBoardTest < Minitest::Test

  def test_create_a_game_play_class
    userboard = UserBoard.new
    assert_equal userboard, userboard
  end


end
