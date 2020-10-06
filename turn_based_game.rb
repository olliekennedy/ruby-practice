def game
  puts "You are facing forward and can either move 'right', 'left' or 'forward' - please enter your choice"
  first_move = gets.chomp.downcase
  return "You got killed by a werewolf! Game Over!" if first_move == "left"
  return "You got killed by a goblin! Game Over!" if first_move == "right"
  puts "Good move! You live! Which direction would you like to move now? Right, left or forward?" if first_move == "forward"
  second_move = gets.chomp.downcase
  return "You got killed by a werewolf! Game Over!" if second_move == "left"
  return "You got killed by a goblin! Game Over!" if second_move == "right"
  return "Good move! You live still! You win!" if second_move == "forward"
end

puts game
