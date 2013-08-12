matrix = ARGF.read
matrix = matrix.split("\n")

sum = {}

matrix.each_with_index do |row, i|
  matrix[i] = row.split(",")
  matrix[i] = matrix[i].map{|i| i.to_i}
end

n = matrix.length

sum[[0,0]] = matrix[0][0]
(1..n-1).each do |i|
  sum[[i,0]] = sum[[i-1,0]] + matrix[i][0]
  sum[[0,i]] = sum[[0,i-1]] + matrix[0][i]
end

(1..n-1).each do |i|
  (1..n-1).each do |j|
    sum[[i,j]] = [sum[[i-1,j]], sum[[i,j-1]]].min+matrix[i][j]
  end
end


p sum[[n-1,n-1]]
