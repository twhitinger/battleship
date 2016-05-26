require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/computer'

class ComputerTest < Minitest::Test

  def test_create_a_computer_class
    computer = Computer.new
    assert_equal computer, computer
  end

  def test_random_computer_position
    computer = Computer.new
    computer.random_computer_position
    assert_equal Hash, computer.random_computer_position.class
  end

  def test_ending_computer_position_returns_array
    computer = Computer.new
    computer.ending_computer_position
    assert_equal Array, computer.ending_computer_position.class
  end

end
