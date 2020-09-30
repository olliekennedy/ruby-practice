def roll_the_dice
  rand(6) + 1
end

def go_plurality(input)
  if input > 1
    return "es"
  end
end

def dice_game
  goes = 0
  player_one_win_tally = 0
  player_two_win_tally = 0
  while true do
    player_one_roll = roll_the_dice + roll_the_dice
    player_two_roll = roll_the_dice + roll_the_dice

    goes = goes + 1

    if player_one_roll > player_two_roll
      player_one_win_tally = player_one_win_tally + 1
    elsif player_one_roll < player_two_roll
      player_two_win_tally = player_two_win_tally + 1
    end

    if player_one_win_tally == 2
      puts "Player 1 Wins in #{goes} go#{go_plurality(goes)} with a roll of #{player_one_roll}!"
      break
    elsif player_two_win_tally == 2
      puts "Player 2 Wins in #{goes} go#{go_plurality(goes)} with a roll of #{player_two_roll}!"
      break
    end
  end
end

dice_game
