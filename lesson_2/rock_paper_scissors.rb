VALID_CHOICES = ['rock', 'paper', 'scissors']

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif win?(computer, player)
    prompt "Computer won!"
  else prompt "It's a tie!"
  end
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = nil
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "You must enter a valid choice"
    end
  end

  computer_choice = ['rock', 'paper', 'scissors'].sample

  prompt "You chose #{choice} and the computer chose #{computer_choice}."

  display_results(choice, computer_choice)

  prompt "If you would like to play again, type yes."
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing!"
