def is_square(x)
  x<0 ? false : Math.sqrt(x).to_i**2 == x
end
