def dig_pow(n, p)
    sum = 0
    n.to_s.each_char.with_index(p) { |char,i| sum += char.to_i**i }
    sum%n == 0 ? sum/n : -1    
end
