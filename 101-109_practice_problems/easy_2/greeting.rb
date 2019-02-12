print "What is your name? "
name = gets.chomp!

if name.split('').include?("!")
  name.gsub!("!", '')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
