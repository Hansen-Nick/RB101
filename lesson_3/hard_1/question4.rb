def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

    while dot_separated_words.size > 0
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)

    true
    end
end

p dot_separated_ip_address?('4.5.4.5')