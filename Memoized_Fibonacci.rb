$cache={}
def fibonacci(n)
  return $cache[n] unless $cache[n].nil?
  return n if (0..1).include? n
   $cache[n] = fibonacci(n - 1) + fibonacci(n - 2)
end
