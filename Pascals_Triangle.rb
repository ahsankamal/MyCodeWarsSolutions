def factorial(n)
  return 1 if n==0 || n==1
  i = 1
  (2..n).each {|j| i*=j}
  i
end

def pascalsTriangle(n)
pascal_triangle = []
i=0
while i<n
  j = 0
  while j<=i
    pascal_triangle<<factorial(i)/(factorial(i-j)*factorial(j))
    # print "#{factorial(i)/(factorial(i-j)*factorial(j))} "
    j+=1
  end 
  # puts " "
  i+=1
end
pascal_triangle
end
