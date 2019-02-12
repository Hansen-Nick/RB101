def sum(int)
  int_array = int.to_s.split(//)
  int_array.map! {|x| x.to_i }
  int_array.sum
end

puts sum(23)
