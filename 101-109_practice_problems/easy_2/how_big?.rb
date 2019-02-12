def prompt(string)
  puts "=> #{string}"
end

SQFEET_TO_SQINCHES = 144
SQINCHES_TO_SQCENTIMETERS = 6.4516

prompt("Enter the length of the room in feet.")
length = gets.chomp.to_f

prompt("Enter the width of the room in feet.")
width = gets.chomp.to_f

area_feet = length * width
area_inches = area_feet * SQFEET_TO_SQINCHES
are_centimeters = area_inches * SQINCHES_TO_SQCENTIMETERS

prompt("The area of the room is #{area_feet.round(2)} square feet.
(#{area_inches.round(2)} in square inches and #{are_centimeters.round(2)} in square cetimeters).")