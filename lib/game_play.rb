require './user_board'

class GamePlay
  def run
    @board = UserBoard.new
    @game = UserGameFlow.new
    @index_array = @board.take_return_values_from_ship_placement(@game.user_begin_game)
    @index_array = @index_array.insert(1, (@index_array[0]+@index_array[1])/2)
    @game_board = @board.overwrite_the_false_values_to_true_in_array(@index_array)

    lookup_table = [{"A1" => 0},{"A2" => 1},{"A3" => 2},{"A4" => 3},
      {"B1" => 4},{"B2" => 5},{"B3" => 6},{"B4" => 7},
      {"C1" => 8},{"C2" => 9},{"C3" => 10},{"C4" => 11},
      {"D1" => 12},{"D2" => 13},{"D3" => 14},{"D4" => 15}]

      counter = 0
      array_display = Array.new(16)

      while counter < 5
        p @game_board
        p array_display


        array_index = ""
        while array_index.length != 2
          puts "Enter coordinate guess ie. A1"
          array_index = gets.chomp
        end

        array_index = lookup_table.find{|x|x[array_index]}.values[0]

        if @game_board[array_index] == true
          array_display[array_index] = "H"
          puts "You done hit my battleShip"
          counter += 1
        elsif @game_board[array_index] == "false"
          array_display[array_index] = "M"
          puts "That is a miss"
        else
          "You already guessed that coordinate"
        end
      end
    end
  end
