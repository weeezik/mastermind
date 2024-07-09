require 'colorize'
require 'io/console'

require_relative 'lib/computer'
require_relative 'lib/list_colors'
require_relative 'lib/link_input_to_color'
require_relative 'lib/position'

computer = Computer.new

position_one = Position.new
position_two = Position.new
position_three = Position.new
position_four = Position.new

all_positions = [position_one, position_two, position_three, position_four]
guess_color_list = %i[red green yellow blue cyan magenta]
feedback_color_list = %i[black white]
board_array = ["#{position_one.value.blink}", '|', "#{position_two.value}", '|', 
"#{position_three.value}", '|', "#{position_four.value}"]

# current_position = all_positions[0]

list_colors guess_color_list, 1
puts board_array.join


def cycle_positions positions
  user_guess_code = []
  counter = 0
  positions.each do |position|
    user_input = STDIN.getch
    position.value = 'X'
    altered_pos_value = position.value.colorize(link_input_to_color user_input)
    user_guess_code << altered_pos_value
    positions[counter].value = user_guess_code[counter]
    puts ["#{positions[0].value}", '|', "#{positions[1].value}", '|', 
    "#{positions[2].value}", '|', "#{positions[3].value}"].join
    counter += 1
  end
end

cycle_positions all_positions














# Feedback and comparison to computer's secret code mechanism
  # list_colors feedback_color_list, 1
  # puts "Computer's secret code: #{computer.generate_secret_code guess_color_list}"

 # case counter
    # when 0
    #   position.value = user_guess_code[counter]
    #   # puts ["#{position.value}", '|', "#{position_two.value.blink}", '|', 
    #   # "#{position_three.value}", '|', "#{position_four.value}"].join
    # when 1
    #   position.value = user_guess_code[counter]
    # when 2
    #   position.value = user_guess_code[counter]
    # when 3
    #   position.value = user_guess_code[counter]
    # end

