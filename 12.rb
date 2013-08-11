require 'mathn'

def triangle n
   n*(n+1)/2
end

def divisors n
  n.prime_division.map{|i| i[1]+1}.inject(:*) - 1
end

#max = 10
#min = 1

#goal = 5

=begin
while max > min do
  mid = (max+min)/2
  p mid
  val = divisors(triangle(mid))
  if val < goal
    min = mid+1
  elsif val > goal
    max = mid-1
  else
    max = mid
  end
end
=end

#p max
i = 2
#while divisors( triangle(i) ) < 500 do
#  i += 1
#end


t = triangle(i)
p t
d = divisors(t)
p d

