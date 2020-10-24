def anagrams(word, words)
hash={}
('a'..'z').each {|i| hash[i] = 0}
word.each_char {|i| hash[i]+=1 }

words.collect do |w|
  tmp={}
  ('a'..'z').each {|i| tmp[i] = 0}
  w.each_char {|i| tmp[i]+=1 }
  w if tmp==hash
end.compact 
end
