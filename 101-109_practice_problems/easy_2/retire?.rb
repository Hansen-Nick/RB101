def prompt(string)
  puts "=> #{string}"
end

prompt("What is your age?")
current_age = gets.chomp.to_i

prompt("At what age would you like to retire?")
retirement_age = gets.chomp.to_i

years_until_retire = retirement_age - current_age
current_year = Time.new.year
retirement_year = current_year + years_until_retire


prompt("It's #{current_year}. You will retire in #{retirement_year}.
You only have #{years_until_retire} years to go!")