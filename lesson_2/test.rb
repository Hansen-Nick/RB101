player_win_total = 0
computer_win_total = 0

loop do

player_win_total += 1
computer_win_total +=3

break if player_win_total || computer_win_total == 6

end

puts player_win_total
puts computer_win_total