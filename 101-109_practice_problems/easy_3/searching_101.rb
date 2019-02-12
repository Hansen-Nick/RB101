def prompt(string)
  puts "==> #{string}"
end

prompt("Enter the 1st number:")
int_1 = gets.to_i

prompt("Enter the 2nd number:")
int_2 = gets.to_i

prompt("Enter the 3rd number:")
int_3 = gets.to_i

prompt("Enter the 4th number:")
int_4 = gets.to_i

prompt("Enter the 5th number:")
int_5 = gets.to_i

prompt("Enter the 6th number:")
int_6 = gets.to_i

numbers = [int_1, int_2, int_3, int_4, int_5]

if numbers.include?(int_6)
  puts "The number #{int_6} appears in #{numbers}."
else
  puts "The number #{int_6} does not appear in #{numbers}."
end
