def prompt(string)
  puts "=> #{string}"
end

prompt("What is the bill?")
bill = gets.to_f

prompt("What is the tip percentage")
tip_decimal = gets.to_f / 100
tip_amount = bill * tip_decimal
total_bill = tip_amount + bill


prompt("The tip is $#{sprintf("%.2f", tip_amount)}.")
prompt("The total is $#{sprintf("%.2f", total_bill)}.")