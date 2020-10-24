# Test if number is prime
def isPrime(num)
  require 'prime'
  Prime.prime? num.abs
end
