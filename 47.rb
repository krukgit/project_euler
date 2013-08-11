require 'mathn'

i = 2
n = 4
consecutive = 0

while true do
  if i.prime_division.length == n
    consecutive += 1
    if consecutive == n
      p i-n+1
      break
    end
  else
    consecutive = 0
  end
  i += 1
end

