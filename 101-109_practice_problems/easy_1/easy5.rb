def reverse_sentence(sentence)
  word_array = sentence.split.reverse
  word_array.join(' ')
end

puts reverse_sentence('') == ''