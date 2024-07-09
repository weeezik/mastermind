require 'colorize'

guess_color_list = [:red, :green, :yellow, :blue, :cyan, :magenta]
feedback_color_list = [:black, :white]

guess_color_list.each do |color|
  puts "Guess.".colorize(color).bold
end
puts "\n"
feedback_color_list.each do |color|
  puts "Feedback.".colorize(color).bold
end
