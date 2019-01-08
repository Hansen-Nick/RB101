def prompt(message)
  puts "=> #{message}"
end

def useable_value(amount)
  amount.delete!('$')
  amount.tr!(',', '_')
  amount.delete!('%', '')
end

def invalid_duration?(duration)
  duration.to_i < 0 || duration.to_i.to_s != duration
end

prompt "Welcome to the Car Payment Calculator!"

name = nil
loop do
  prompt "What is your name?"
  name = gets.chomp.strip

  if name.empty?
    prompt "You must enter a valid name before continuing."
  else
    break
  end
end

prompt "Nice to meet you, #{name}! Let us calculate the monthly payment for your
        potential purchase."
prompt "First, I will need some information from you."
prompt "-----------------------------------------------------------------------"

loop do
  loan_amount = nil
  loop do
    prompt "What is the total loan amount?"
    loan_amount = gets.chomp

    if loan_amount.empty? || useable_value(loan_amount).to_f < 0
      prompt "That is not a valid input"
    else
      break
    end
  end

  rate = nil
  loop do
    prompt "What is the annual percantage rate?"
    rate = gets.chomp

    if rate.empty? || useable_value(rate).to_f < 0
      prompt "That is not a valid input"
    else
      break
    end
  end

  duration = nil
  loop do
    prompt "What is the loan duration in years?"
    duration = gets.chomp

    if duration.empty? || invalid_duration?(duration)
      prompt "Your duration needs to be a positive whole number."
    else
      break
    end
  end

  yearly_interest = rate.to_f / 100
  monthly_interest = yearly_interest / 12
  month_total = duration.to_f * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest /
                    (1 - (1 + monthly_interest)**-month_total))

  prompt "Your monthly payment would be $#{format('%.2f', monthly_payment)}."

  prompt "Would you like to try again? Input 'Yes' to do so"
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using the car payment calculator, #{name}."
prompt "Good luck with your potential purchase!"
