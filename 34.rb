factorials = [1]+(1..9).map{|i| (1..i).inject(:*)}

answer = 0

(3..2540160).each do |i|
  answer += i if i.to_s.chars.map{|digit| factorials[digit.to_i]}.inject(:+) == i
end

p answer
