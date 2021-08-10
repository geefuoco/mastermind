

class Game

  attr_reader :message_object, :code_matcher_object, :code_object

  def initialize(message_object, code_matcher_object, code_object)
    @message_object = message_object
    @code_matcher_object = code_matcher_object
    @code_object = code_object
  end


  def start_game
    rounds = 12
    code_master_code = self.code_object.combination
    self.message_object.display_welcome_message
    while rounds > 0 do
      self.message_object.display_input_message
      player_guess = gets.chomp
      self.message.get_input(player_guess)
      color_matches = self.code_matcher_object.color_match(self.message.input, code_master_code)
      color_and_position = self.code_matcher_object.color_and_position(self.message.input, code_master_code)
      self.message.display_color_matches(color_matches)
      self.display_exact_matchs(color_and_position)
      if winner?(self.message.input, code_master_code) then
        puts "Congrats ! You win !"
      end
      round -= 1
    end
    puts "You Lose ! The combination was #{code_master_code}"
  end


  def winner?(code_1, code_2)
    code_1 == code_2
  end


end