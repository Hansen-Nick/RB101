def prompt(string)
  puts ">> #{string}"
end

prompt("Please enter an integer greater than 0:")
integer = gets.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
sum_or_product = gets.chomp

sum_of_integers = (1..integer).inject(:+)
product_of_integers = (1..integer).inject(:*)

if sum_or_product == 's'
  puts "The sum of the integers between 1 and #{integer} is #{sum_of_integers}"
elsif sum_or_product == 'p'
  puts "The product of the integers between 1 and #{integer} is #{product_of_integers}"
else
  puts "That is not a valid input."
end
