def maskify(cc)
  cc.length-4 > 0 ? "#"*(cc.length - 4)+cc[-4..-1] : cc
end
