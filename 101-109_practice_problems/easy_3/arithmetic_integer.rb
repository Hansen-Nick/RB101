def prompt(string)
  puts "==> #{string}"
end

prompt("Enter the first number:")
num_1 = gets.to_i

prompt("Enter the second number:")
num_2 = gets.to_i

prompt("#{num_1} + #{num_2} = #{num_1 + num_2}")
prompt("#{num_1} - #{num_2} = #{num_1 - num_2}")
prompt("#{num_1} * #{num_2} = #{num_1 * num_2}")
prompt("#{num_1} / #{num_2} = #{num_1 / num_2}")
prompt("#{num_1} % #{num_2} = #{num_1 % num_2}")
prompt("#{num_1} ** #{num_2} = #{num_1 ** num_2}")
