require_relative '../lib/big_ship.rb'
require_relative '../lib/small_ship.rb'
require 'pry'

class ComputerGameFlow

  def begin_game
    checker = false
    computer_big_ship = BigShip.new
    ending_computer_position_large = computer_big_ship.ending_computer_position_large
    while checker == false
      computer_small_ship = SmallShip.new
      values = computer_small_ship.ending_computer_position
      range = ending_computer_position_large.sort_by {|hsh|hsh.values}.map{|x| x.values}.flatten
      number_range =[*range[0]..range[1]]
      range = ending_computer_position_large.sort_by {|hsh|hsh.keys}.map{|x| x.keys}.flatten
      letter_range = (range[0]..range[1]).to_a
      if (number_range.include?(values.map{|x|x.values}.flatten[0]) && letter_range.include?(values.map{|x|x.keys}.flatten[0])) ||
        (number_range.include?(values.map{|x|x.values}.flatten[1]) && letter_range.include?(values.map{|x|x.keys}.flatten[1]))
        checker
      else
        checker = true
      end


    end
    [[ending_computer_position_large[0].keys[0] + ending_computer_position_large[0].values[0].to_s,
    ending_computer_position_large[1].keys[0] + ending_computer_position_large[1].values[0].to_s],
    [values[0].keys[0] + values[0].values[0].to_s,
    values[1].keys[0] + values[1].values[0].to_s]]
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
