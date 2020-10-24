def sum_pairs(ints, sum)
    hash = {}

ints.each_with_index do |i,j|
   if hash[i].nil? 
    hash[i]=[1,[j]]
   else
    hash[i][0]+=1
    hash[i][1]<<j
   end  
   end
   # print hash
   # puts ""

min=10000000000
tuple=nil
ints.each do |i|
  if hash[sum-i].nil? || hash[i].nil?
    next
  elsif sum-i == i 
    if hash[i][0]>1 && min>hash[i][1][1]
      min = hash[i][1][1] 
      tuple = [i,i]
      hash[i]=nil
    end
  elsif min>hash[sum-i][1][0]
    min = hash[sum-i][1][0]
    tuple = [i,sum-i]
    hash[i]=nil
    hash[sum-i]=nil
  else
    hash[i]=nil
    hash[sum-i]=nil
  end 
  # print "#{min} #{tuple}\n"
end
tuple
end
