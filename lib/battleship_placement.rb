require 'pry'


class BattleShipPlacement
  def random_computer_position
    letter = [1].map{('A'..'D').to_a[rand(4)]}.join
    number = [1].map{[*1..4][rand(4)]}.join.to_i
    {letter => number}
  end

  def ending_computer_position_large
    starting_coord_begin = random_computer_position

    x = starting_coord_begin.keys.join.ord

    if x == 65
      letter_end = [1].map{[x,x+2][rand(2)]}.join.to_i.chr
    elsif x == 68
      letter_end = [1].map{[x,x-2][rand(2)]}.join.to_i.chr
    elsif x == 67
      letter_end = [1].map{[x-2,x][rand(2)]}.join.to_i.chr
    elsif x == 66
      letter_end = [1].map{[x+2,x][rand(2)]}.join.to_i.chr
    end
    x = starting_coord_begin.values.join.to_i

    if letter_end != starting_coord_begin.keys[0]
      number_end = starting_coord_begin.values[0]
    elsif x == 1
      number_end = 3
    elsif x == 4
      number_end = 2
    elsif x == 3
      number_end = 1
    else
      number_end = [1].map{[x-2,x,x+2][rand(3)]}.join.to_i
    end

    ending_coord = {letter_end => number_end}


    ending_computer_position_large if ending_coord == starting_coord_begin

    [starting_coord_begin,ending_coord]
  end
end




# range = [starting_coord_begin, ending_coord].sort_by {|hsh|hsh.values}.map{|x| x.values}.flatten
# big_ship_range = [*range[0]..range[1]].include?(smallship.keys[0])
