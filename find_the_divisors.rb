def divisors(n)
  require 'prime'
  return "#{n} is prime" if Prime.prime?(n)
  (2..n/2).collect { |i| i if n%i==0 }.compact
end
