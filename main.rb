require 'colorize'
require 'io/console'

require_relative 'lib/computer'
require_relative 'lib/list_colors'

computer = Computer.new

guess_color_list = %i[red green yellow blue cyan magenta]
feedback_color_list = %i[black white]

list_colors guess_color_list, 1
puts "\n"
list_colors feedback_color_list, 1
puts ['.'.bold.blink, '|', ' ', '|', ' ', '|', ' '].join
puts "Computer's secret code: #{computer.generate_secret_code guess_color_list}"

