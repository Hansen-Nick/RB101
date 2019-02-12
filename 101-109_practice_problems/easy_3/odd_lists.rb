def oddities(array)
  odd_array = []
  array.each_with_index do |_, index|
    if index.even?
      odd_array << array[index]
    else
      next
    end
  end
  odd_array
end


def oddities(array)
  even_array = []
  array.each_with_index do |_, index|
    if index.odd?
      even_array << array[index]
    else
      next
    end
  end
  even_array
end

def oddities3(array)
  array.select.with_index do |element, index|
    index.even?
  end
end

p oddities3([1,2,3,4,5])

