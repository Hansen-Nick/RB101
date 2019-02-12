# Understand the Problem
# Write a method that takes two arguments, a string and a positive integer, and
# prints as many times as the integer indicates.

# Input: string and integer
# Output: String

# Algorithm: Create a block that repeats an input a certain amount of TIMES.

def repeat(str, int)
  int.times {puts str}
end

repeat('hello world', 5)
