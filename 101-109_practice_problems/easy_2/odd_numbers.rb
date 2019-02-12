numbers = (1..99)

numbers.each { |x| puts x if x.odd? }

numbers.select { |x| x.odd? }