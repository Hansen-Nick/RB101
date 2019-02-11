# Understand the Problem
# Write a method that takes one integer arument (positive, zero, or negative)
# and returns true if absolute value is odd and false if positive.

#Input: integer
# Output: boolean true/false

def is_odd?(int)
  int.abs % 2 != 0
end


def is_odd2?(int)
  int.abs.remainder(2) != 0
end

puts is_odd2?(3)

