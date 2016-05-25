require_relative '../lib/big_ship.rb'
require_relative '../lib/small_ship.rb'
require 'pry'


checker = false
computer_big_ship = BigShip.new
@ending_computer_position_large = computer_big_ship.ending_computer_position_large
while checker == false
computer_small_ship = SmallShip.new
values = computer_small_ship.ending_computer_position


def number_range
range = @ending_computer_position_large.sort_by {|hsh|hsh.values}.map{|x| x.values}.flatten
[range[0],range[1]]
end

def letter_range
  range = @ending_computer_position_large.sort_by {|hsh|hsh.keys}.map{|x| x.keys}.flatten
  [range[0],range[1]]
end


  if (number_range.include?(values.map{|x|x.values}.flatten[0]) && letter_range.include?(values.map{|x|x.keys}.flatten[0])) || (number_range.include?(values.map{|x|x.values}.flatten[1]) && letter_range.include?(values.map{|x|x.keys}.flatten[1]))
    checker
  else
    checker = true
  end
end





# (number_range.include?(values.map{|x|x.values}.flatten[0]) && letter_range.include?(values.map{|x|x.keys}.flatten[0])) || (number_range.include?(values.map{|x|x.values}.flatten[1]) && letter_range.include?(values.map{|x|x.keys}.flatten[1]))





  # # def validation_check
  # #   while
  # # end
  #
  # def number_range
  # range = ending_computer_position_large.sort_by {|hsh|hsh.values}.map{|x| x.values}.flatten
  # [*range[0]..range[1]]
  # end
  #
  # def letter_range
  #   range = ending_computer_position_large.sort_by {|hsh|hsh.keys}.map{|x| x.keys}.flatten
  #   (range[0]..range[1]).to_a
  # end
  #
  # # while number_range.include?(starting_coord_begin.values[0]) && letter_range.include?(starting_coord_begin.keys[0])
  # #   computer_two_position.ending_computer_position
  # # end
