def pig_it text
  text.split.collect {|n| n.size>1 ? n[-(n.size-1)..-1]+n[0]+'ay' : (n.between? 'a','z' or n.between?('A','Z')) ? n[0]+'ay' : n[0]}.join(' ')
end
