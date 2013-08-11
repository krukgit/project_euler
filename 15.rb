lattice = {}

n = 20

(0..n).each do |i|
  lattice[[0,i]] = lattice[[i,0]] = 1
end
(1..n).each do |i|
  (1..n).each do |j|
    if i != 0 || j != 0
      lattice[[i,j]] = lattice[[i-1,j]] + lattice[[i,j-1]]
    end
  end
end

p lattice[[n,n]]
