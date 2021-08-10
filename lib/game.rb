
class Game

  attr_reader :message_object, :code_matcher_object, :code_object

  def initialize(message_object, code_matcher_object, code_object)
    @message_object = message_object
    @code_matcher_object = code_matcher_object
    @code_object = code_object
  end


  def start_game_guesser
    rounds = 12
    self.code_object.generate_combination
    code_master_code = self.code_object.combination
    self.message_obect.display_guesser_game_start
    while rounds > 0 do
      self.message_object.display_input_message(rounds)
      player_guess = gets.chomp
      self.message_object.get_input(player_guess)
      color_matches = self.code_matcher_object.color_match(self.message_object.input, code_master_code)
      color_and_position = self.code_matcher_object.color_and_position(self.message_object.input, code_master_code)
      self.message_object.display_color_matches(color_matches)
      self.message_object.display_exact_matches(color_and_position)
      if winner?(self.message_object.input, code_master_code) then
        return self.message_object.display_winner_message
      end
      rounds -= 1
    end
    self.message_obect.display_lose_message(code_master_code)
  end

  def start_game_code_master
    self.message_object.display_code_master_game_start
    player_combination = gets.chomp
    self.message_object.get_input(player_combination)
    rounds = 12
    while rounds > 0 do
      cpu_guess = self.code_object.generate_combination
      p cpu_guess
      if winner?(player_combination, cpu_guess)then
        return self.message_object.display_lose_message_code_master
      end
      rounds -= 1
    end
    self.message_object.display_winner_message
  end


  def winner?(code_1, code_2)
    code_1 == code_2
  end


end