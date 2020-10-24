def to_camel_case(str)
  if str.include?("-")
   split_str = str.split("-")
  elsif str.include?("_")
   split_str = str.split("_")
  else
    return str
  end
   split_str[0]+split_str[1..-1].collect { |i| i.capitalize }.join
end
