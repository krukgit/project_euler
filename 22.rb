names = File.new('names.txt').read
names = names.delete("\"").split(",").sort


def value name
  name.split("").map{|l| l[0]-'A'[0]+1}.inject(:+)
end

sum = 0

names.each_with_index do |name, i|
  sum += value(name)*(i+1)
end

p sum
