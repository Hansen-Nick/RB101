def count_occurences(arr)
  occurences = {}
  arr.each do |x|
    x.downcase!
    occurences[x] = arr.count(x)
  end
  occurences.each do |object, count|
    puts "#{object} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
count_occurences(vehicles)