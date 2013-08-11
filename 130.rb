require 'mathn'
n = 3

nums = []

def A(n)
  k = 2
  rk = 11
  while true
    if rk%n == 0
      return k
    end
    k += 1
    rk = rk*10+1
  end
end

p A(7)==6
p A(41)==5


while true
  if !Prime.prime?(n)
    if (n%2 != 0) && (n%5 != 0) && ((n-1) % A(n) == 0)
      nums << n
      p n
      if nums.length == 25
        break
      end
    end
  end
  n += 2
end

p nums
p nums.inject(:+)
