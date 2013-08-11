
def valid i, p
  i == i.to_s.split("").map{|i| i.to_i**p}.inject(:+)
end

sum = 0

sum = 0
max = 6*9**5
(2..max).each do |i|
  if valid i, 5
    sum += i
  end
end

p sum
