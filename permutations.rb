$all_perm=[]
def permutations(string)
  $all_perm=[]
    perm(string,0,string.size)
    $all_perm.uniq.sort
end

def perm(str,i,n)
  # puts str
  if i==n-1
    $all_perm << "#{str}" #can't use $all_perm << str
    return
  end
  j=i
  while j<=n-1
    str[i],str[j] = str[j],str[i]
    perm(str,i+1,n)
    str[i],str[j] = str[j],str[i]
    j+=1
  end 
end
