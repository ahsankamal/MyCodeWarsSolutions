def sum_dig_pow(a, b)
  (a..b).collect do |n| 
    sum = 0
    n.to_s.each_char.with_index(1) { |char,i| sum += char.to_i**i }
    n if sum == n
  end.compact
end
