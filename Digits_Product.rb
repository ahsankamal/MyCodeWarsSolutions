def digits_product(product)
    digits=[]
    if product<10
      return product+10
    end
  9.downto(2).each do |i|
  while product%i == 0
    digits<<i
    product=product/i
  end
end
  if product >10
    return -1
  end 
  digits.reverse.join.to_i
end
