require './dialogue'
require_relative "game_play"

module FlowControl

  def FlowControl.flow_control_begin

    input = nil
    until input == "p" || input == "play"
      puts Dialogue.welcome
      input = gets.chomp.downcase
      if input == "p" || input == "play"
        puts Dialogue.instruct
        puts Dialogue.after_play
        gameplay = GamePlay.new
        gameplay.run

      elsif input == "i" || input == "instructions"
        puts Dialogue.instruct
      elsif input == "q" || input == "quit"
        abort("She cannot take any more of this, Captain!")
      end
    end
  end
end
