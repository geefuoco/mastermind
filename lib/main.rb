require 'game'
require 'code'
require 'message'
require 'code_matcher'



def start
  msg = Message.new()
  code = Code.new("","","","")
  code_matcher = CodeMatcher.new()
  game = Game.new(msg, code_matcher , code) 
  msg.display_welcome_message
  game_mode = gets.chomp

  if game_mode == 1.to_s then
    game.start_game_gusser
  elsif game_mode == 2.to_s
    game.start_game_code_master
  else
    puts "Error: Please enter a valid input (1 or 2)"
    start()
  end
end

start()




