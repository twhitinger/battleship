require_relative '../lib/big_ship.rb'
require_relative '../lib/small_ship.rb'
require 'pry'

class UserGameFlow


  def user_begin_game
    checker = false
    print "ENTER coord for big ship: "
    big_ship = gets.chomp.upcase
  until big_ship[1].to_i == big_ship[1].to_i + 2 || big_ship[1].to_i == big_ship[1].to_i - 2 ||
    big_ship[4].to_i == big_ship[1].to_i + 2 || big_ship[4].to_i == big_ship[1].to_i + - 2
    print "Coordinates must be entered with two positions ie. A1 A3: "
    big_ship = gets.chomp.upcase
  end
    while big_ship[0].class != String || big_ship[1].to_i.class != Fixnum || big_ship[2] != " " ||
       big_ship[3].class != String || big_ship[4].to_i.class != Fixnum
      print "Coordinates must be entered with two positions ie. A1 A3 "
      big_ship = gets.chomp.upcase
    end

    big_ship = big_ship.split(" ")

    big_ship = [{big_ship[0][0] => big_ship[0][1]},{big_ship[1][0] => big_ship[1][1]} ]
    computer_big_ship = big_ship

    ending_computer_position_large = computer_big_ship

    while checker == false
      print "ENTER coord for small ship: "

      small_ship = gets.chomp.upcase
      until small_ship[1].to_i == small_ship[1].to_i + 1 || small_ship[1].to_i == small_ship[1].to_i - 1 ||
        small_ship[4].to_i == small_ship[1].to_i + 1 || small_ship[4].to_i == small_ship[1].to_i + - 1
        print "Coordinates must be entered with two positions ie. B1 B2: "
        small_ship = gets.chomp.upcase
      end
      while small_ship[0].class != String || small_ship[1].to_i.class != Fixnum || small_ship[2] != " " ||
         small_ship[3].class != String || small_ship[4].to_i.class != Fixnum
        print "Coordinates must be entered with two positions ie. B2 B2: "
        small_ship = gets.chomp.upcase
      end
       small_ship = small_ship.split(" ")

      small_ship = [{small_ship[0][0] => small_ship[0][1]},{small_ship[1][0] => small_ship[1][1]}]


      values = small_ship

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
