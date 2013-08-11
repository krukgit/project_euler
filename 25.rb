a = 1
b = 1
i = 2

while b.to_s.length < 1000 do
  a, b = b, a+b
  i += 1
end

p i, b
