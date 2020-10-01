def game
  move_number = 1
  while true do

    puts "You are facing forward and can either move 'right', 'left' or 'forward' - please enter your choice"
    user_choice = gets.chomp

    if loop_counter == 2 && user_choice == "forward"
      puts "Well done! You win the game!"
      break
    elsif user_choice == "forward"
      loop_counter += 1
      puts "Well done! You live! Next move:"
    elsif user_choice == "right"
      puts "You got killed by a goblin! Game Over!"
      break
    elsif user_choice == "left"
      puts "You got killed by a werewolf! Game Over!"
      break
    end

  end
end

game
