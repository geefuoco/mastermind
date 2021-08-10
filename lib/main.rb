require 'game'
require 'code'
require 'message'
require 'code_matcher'

msg = Message.new()
code = Code.generate_combination
code_matcher = CodeMatcher.new()
game = Game.new(msg, code_matcher , code)

game.start_game