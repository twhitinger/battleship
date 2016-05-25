require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/computer'



class ComputerTest < Minitest::Test

  def test_create_a_computer_class
    computer = Computer.new
    assert_equal computer, computer
  end
end
