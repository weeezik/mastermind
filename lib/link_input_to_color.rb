def link_input_to_color user_number
  case user_number
  when "1"
    :red
  when "2"
    :green
  when "3"
    :yellow
  when "4"
    :blue
  when "5"
    :cyan
  when "6"
    :magenta
  else
    puts "Invalid input"
  end
end