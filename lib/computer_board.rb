require 'pry'
require "./computer_game_flow.rb"
class ComputerBoard


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
# IF THE GAME BOARD IS "FALSE" AND YOU GUESS THAT CHANGE THE BOARD TO "M"
# IF THE GAME BOARD IS "TRUE" AND YOU GUESS THAT CHANGE THE BOARD TO "H"
# I'VE CREATED THE UNDERLYING COMPARISON GRID, GENERATE A NEW ARRAY BASED OF THE UNDERLYING TRUE OR FALSE.
 def overwrite_the_board_H_M
   array_display = Array.new(16)
   if game_board[index] == true
     array_display[index] = "H"
   elsif game_board[index] == "false"
     array_display[index] = "M"
   else
     "You already guessed that coordinate"
   end

 end


end
board = ComputerBoard.new
game = ComputerGameFlow.new

index_array = board.take_return_values_from_ship_placement(game.begin_game)
index_array = index_array.insert(1, (index_array[0]+index_array[1])/2)
board.overwrite_the_false_values_to_true_in_array(index_array)





# blank_row = Array.new(4,false)
# board = Array.new(4) { blank_row.clone }
