p (1..1000000).map{|n| n.to_s(2)==n.to_s(2).reverse && n.to_s(10)==n.to_s(10).reverse ? n : nil}.compact.inject(:+)

  
