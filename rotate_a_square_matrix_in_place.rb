def rotate_in_place(matrix)

  n = matrix.size
  i = 0
  while i<n
    j=i
    while j<n
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
      j+=1
    end
    i+=1
  end 

  i=0
  while i<n
    j=0
    k = n-1
    while j<k
      matrix[j][i], matrix[k][i] = matrix[k][i] ,matrix[j][i]
      j+=1
      k-=1
    end
    i+=1
  end 
  matrix.reverse!
  
  i=0
  while i<n
  matrix[i].reverse!
  i+=1
  end
  matrix
end
