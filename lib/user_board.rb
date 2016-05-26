require 'pry'
require_relative "../lib/user_game_flow.rb"
class UserBoard


  def board
    "false false false false
    false false false false
    false false false false
    false false false false"
  end

  def board_lookup_table
    [{"A1" => 0},{"A2" => 1},{"A3" => 2},{"A4" => 3},
      {"B1" => 4},{"B2" => 5},{"B3" => 6},{"B4" => 7},
      {"C1" => 8},{"C2" => 9},{"C3" => 10},{"C4" => 11},
      {"D1" => 12},{"D2" => 13},{"D3" => 14},{"D4" => 15}]
    end

    def board_convert_to_array_assign_true_value(index)
      board.split(' ')[index] = true
    end

    def take_return_values_from_ship_placement(game_begin)
      index = game_begin.flatten.map {|x| i = 0; board_lookup_table.find { |j| i+=1;  game_begin.flatten[i] = j[x] } }
      index.map {|x|x.values}.flatten
    end

    def overwrite_the_false_values_to_true_in_array(index_array)
      game_board = board.split(' ')
      index_array.each {|x| game_board[x] = true }
      game_board
    end



  end
