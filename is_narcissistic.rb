def narcissistic?( value )
  number = value.to_s
  len = number.length
  sum = 0
  number.each_char {|i| sum+=i.to_i**len}
  sum == value
end
