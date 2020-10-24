$all_pins=[]
def get_pins(observed)
key_pad = {}
key_pad[1]=[1,2,4]
key_pad[2]=[2,1,5,3]
key_pad[3]=[3,2,6]
key_pad[4]=[4,1,5,7]
key_pad[5]=[5,2,4,6,8]
key_pad[6]=[6,3,5,9]
key_pad[7]=[7,4,8]
key_pad[8]=[8,5,7,9,0]
key_pad[9]=[9,8,6]
key_pad[0]=[0,8]
$all_pins=[]
  ans = []
    pins(observed.to_s,0,observed.to_s.length, key_pad, ans)
    # print $all_pins.sort
    $all_pins.sort
end

def pins(observed,i,len, key_pad, ans)
if  i==len
  $all_pins << ans.join
  return
end 
  key_pad[observed[i].to_i].each do |j|
  ans.push(j)
  pins(observed,i+1,len, key_pad, ans)
  ans.pop
  end
end
