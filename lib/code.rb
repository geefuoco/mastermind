class Code

  @@COLORS = ["white", "black", "green", "red", "blue", "yellow"]

  attr_reader :first_color, :second_color, :third_color, :fourth_color, :combination 

  def initialize(first_color, 
                second_color, 
                third_color,
                fourth_color)

    @first_color = first_color
    @second_color = second_color
    @third_color = third_color
    @fourth_color = fourth_color
    @combination = [first_color, second_color, third_color, fourth_color]
  end

  def generate_combination
    code_colors = []
    4.times do
      code_colors.push(@@COLORS[rand(6)])
    end
    @combination = [code_colors[0], code_colors[1], code_colors[2], code_colors[3]]
  end


end