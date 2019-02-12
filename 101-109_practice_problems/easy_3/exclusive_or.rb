def xor?(arg1, arg2)
  if arg1 == true && arg2 == true
    return false
  elsif arg1 == false && arg2 == false
    return false
  else
    return true
  end
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?,4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
