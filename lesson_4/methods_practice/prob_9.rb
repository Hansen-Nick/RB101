words = "the flinstones rock"

def titleize(sentence)
  sentence.split.map { |x| x.capitalize}.join(' ')
end

p titleize(words)

