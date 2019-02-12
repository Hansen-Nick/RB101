def reverse_words(string)
  word_array = string.split
  word_array.each { |x| x.reverse! if x.length >= 5}
  word_array.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
