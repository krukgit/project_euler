def fac n
  res = 1
  (1..n).each do |i| 
    res = res*i
    while res % 10 == 0
      res /= 10
    end
    p res
  end
  return res
end

p fac(10)
p fac(100)
p fac(100).to_s.split("").map{|s| s.to_i}.inject(:+)

