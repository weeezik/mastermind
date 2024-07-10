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