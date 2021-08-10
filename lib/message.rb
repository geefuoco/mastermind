class Message

  attr_reader :input

  @@REGEX = /([a-z]{3,6}\s{1}){3}[a-z]{3,6}\s*$/


  def initialize
  end

  def get_input(input)
    if @@REGEX === input then
      input = input.split(" ")
      @input = input
    else
      puts "Error: Invalid input. Try again"
      get_input(gets.chomp)
    end
  end

  def display_welcome_message
    puts "Welcome to MasterMind!"
    puts "Guess your opponenets code in 12 tries of less to win!"
  end

  def display_input_message
    puts "Enter 4 colors, separated by spaces"
    puts "Colors: [black, white, green, red, blue, yellow]"
  end

  def display_color_matches(color_matches)
    puts "You matched #{color_matches} colors correctly"
  end

  def display_exact_matchs(exact_matches)
    puts "You matched #{exact_matches} colors and positions correctly"
  end

end