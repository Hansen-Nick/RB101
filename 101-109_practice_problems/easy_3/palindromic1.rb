def palindrome?(string)
  string == string.reverse
end


def arr_palindrome?(array)
  array == array.reverse
end

p arr_palindrome?([1,2,3,2,1])

def str_or_arr_palindrome?(x)
  x == x.reverse
end

p str_or_arr_palindrome?([1,2,3,2,1])
