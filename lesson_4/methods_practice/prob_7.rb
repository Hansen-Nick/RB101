statement = "The Flinstones Rock"

letter_count = Hash.new(0)

letter_array = statement.delete(' ').split('')

letter_array.each do |letter|
  letter_count[letter] += 1
end

p letter_count

