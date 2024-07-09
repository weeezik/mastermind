require 'colorize'
require 'io/console'

require_relative 'lib/computer'
require_relative 'lib/list_colors'
require_relative 'lib/link_input_to_color'

computer = Computer.new
# position_one = Position.new
# position_two = Position.new
# position_three = Position.new
# position_four = Position.new

guess_color_list = %i[red green yellow blue cyan magenta]
feedback_color_list = %i[black white]
board_array = ['_', '|', '_', '|', '_', '|', '_']

list_colors guess_color_list, 1
puts "\n #{board_array.join}"
user_input = STDIN.getch
puts link_input_to_color user_input


list_colors feedback_color_list, 1
puts "Computer's secret code: #{computer.generate_secret_code guess_color_list}"



