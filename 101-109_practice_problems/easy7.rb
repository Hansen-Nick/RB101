def stringy(integer, start_with = 1)
  counter = start_with

  loop do
    if counter % 2 != 0
      print 1
    else
      print 0
    end
    counter += 1
    break if counter > integer
  end
end

puts stringy(6, 0)
puts stringy(9)
puts stringy(4)
puts stringy(7)