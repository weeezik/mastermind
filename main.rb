require 'colorize'
require 'io/console'

require_relative 'lib/computer'

guess_color_list = %i[red green yellow blue cyan magenta]
feedback_color_list = %i[black white]

def guess_colors(colors, iterator)
  iterator = 1
  colors.each do |color|
    puts "#{iterator}: #{color}.".colorize(color).bold
    iterator += 1
  end
end

def user_input
  user_input = STDIN.getch
  p user_input
  #case 1, insert color that is associated with one (red), etc. etc.
end

# puts "\n"
# feedback_color_list.each do |color|
#   puts "Feedback.".colorize(color).bold
# end

guess_colors(guess_color_list, 1)

puts ['.'.bold.blink, '|', ' ', '|', ' ', '|', ' '].join


computer = Computer.new

p computer.generate_secret_code guess_color_list


