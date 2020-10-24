def format_duration(seconds)
  return 'now' if seconds==0
  min=60
  hr = 60*min
  day = 24*hr
  yr = 365*day
  s=""
  s += "#{seconds/yr} years" if seconds/yr > 1
  s += "#{seconds/yr} year" if seconds/yr == 1
  seconds = seconds%yr

  #s+=", " if seconds/day >= 1 and s.size>0
  (seconds%day == 0 )? s+=" and " : s+=", " if s.size>0 and seconds!=0
  s += "#{seconds/day} days" if seconds/day > 1
  s += "#{seconds/day} day" if seconds/day == 1
  seconds = seconds%day

  #s+=", " if seconds/hr >= 1 and s.size>0
  (seconds%hr == 0 )? s+=" and " : s+=", " if s.size>0 and seconds!=0
  s += "#{seconds/hr} hours" if seconds/hr > 1
  s += "#{seconds/hr} hour" if seconds/hr == 1
  seconds = seconds%hr

#   s+=", " if seconds/min >= 1 and s.size>0
  (seconds%min == 0)? s+=" and " : s+=", " if s.size>0 and seconds!=0
  s += "#{seconds/min} minutes" if seconds/min > 1
  s += "#{seconds/min} minute" if seconds/min == 1
  seconds = seconds%min

  s+=" and " if seconds>0 and s.size>0
  s += "#{seconds} seconds" if seconds > 1
  s += "#{seconds} second" if seconds == 1
  s
end
