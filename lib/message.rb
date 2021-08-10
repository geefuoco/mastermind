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
    puts "\e[32m-----------------------\e[0m"
    puts "Welcome to MasterMind!"
    puts "\e[32m-----------------------\e[0m"
    puts "Guess your opponents code in \e[31m12 tries\e[0m of less to win!"
  end

  def display_input_message(rounds_left)
    puts "\e[32m~~~~~~~~~~#{rounds_left} ROUNDS REMAINING~~~~~~~~~~~~~~\e[0m"
    puts "Enter 4 colors, separated by spaces"
    puts "Colors: [\e[30mblack\e[0m, \e[37mwhite\e[0m, \e[32mgreen\e[0m, \e[31mred\e[0m, \e[34mblue\e[0m, \e[33myellow\e[0m]"
  end

  def display_color_matches(color_matches)
    puts "You matched #{color_matches} colors correctly\n"
  end

  def display_exact_matches(exact_matches)
    puts "You matched #{exact_matches} colors and positions correctly\n"
  end

  def display_winner_message
    puts "\e[32m~~~~~~~~~~~CONGRATULATIONS~~~~~~~~~~~~~~\e[0m"
    puts "You win !"
  end

  def display_lose_message(combination)
    puts "\e[33m~~~~~~~~~~~GAMEOVER~~~~~~~~~~~~~~\e[0m"
    puts "You lose ! The combination was #{combination}"
  end

end