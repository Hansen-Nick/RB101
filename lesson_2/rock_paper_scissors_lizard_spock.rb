def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  win_conditions = {
    "r" => ['l', 'sc'],
    "p" => ['r', 'sp'],
    "sc" => ['p', 'l'],
    "l" => ['sp', 'p'],
    "sp" => ['sc', 'r']
  }
  win_conditions[first].include?(second)
end

def valid_move?(move)
  move_options = %w(r p sc l sp)
  move_options.include?(move)
end

beginning_prompt = <<-MSG
  Welcome to Rock, Paper, Scissors, Lizard, Spock!
  Since it is rather rude to merely refer to you as "player 1", I would like
  to know your real name!
    MSG

prompt(beginning_prompt)

player_name = nil
loop do
  prompt "Please type in your name."
  player_name = gets.chomp.strip
  if !player_name.empty? break
  prompt "You need to type in a name to continue."
end

player_intro_prompt = <<-MSG
  Hello, #{player_name}. I will be your guide throughout this game. Your
  opponent today will be 'The Borg'.  They are a robotic alien race.  You
  can hear it muttering 'Resistance is futile' under its breath.
    MSG

prompt(player_intro_prompt)

prompt "The first player to reach 5 wins will be the grand victor of the match."

loop do
  player_win_total = 0
  computer_win_total = 0

  loop do
    choice_prompt = <<-MSG
      Pick one of the following options as your move:
      - 'r' for rock
      - 'p' for paper
      - 'sc' for scissors
      - 'l' for lizard
      - 'sp' for spock
      MSG

    player_choice = nil
    loop do
      prompt(choice_prompt)
      player_choice = gets.chomp

      if valid_move?(player_choice)
        break
      else
        prompt "That is not a valid input. Try again."
      end
    end

    computer_choice = %w(r p sc l sp).sample

    prompt "You chose #{player_choice} and The Borg chose #{computer_choice}."

    if win?(player_choice, computer_choice)
      player_win_total += 1
      prompt "You won!"
      prompt "The score is now #{player_name}: #{player_win_total},
              The Borg: #{computer_win_total}."
    elsif win?(computer_choice, player_choice)
      computer_win_total += 1
      prompt "The Borg won!"
      prompt "The score is now #{player_name}: #{player_win_total},
              The Borg: #{computer_win_total}."
    else
      prompt "It's a tie!"
      prompt "The score is still #{player_name}: #{player_win_total},
              The Borg: #{computer_win_total}."
    end

    break if player_win_total == 5 || computer_win_total == 5

  end

  if player_win_total == 5
    prompt "You won the match!"
  else
    prompt "The Borg won the match!"
  end

  prompt "Would you like to play again? Enter 'Yes' to do so."
  play_again = gets.chomp

  break unless play_again.downcase.start_with?('y')
end

prompt "Thank you for playing! I hope you fared well against your adversary."
