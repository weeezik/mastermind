def list_colors(colors, iterator)
  iterator = 1
  colors.each do |color|
    puts "#{iterator}: #{color}.".colorize(color).bold
    iterator += 1
  end
end