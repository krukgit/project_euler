def solve current_amount, coins, goal
  return 1 if current_amount == goal
  return 0 if current_amount > goal || coins.empty?
  return solve(current_amount+coins[0], coins, goal) + solve(current_amount, coins[1..-1], goal)
end

p solve(0, [1,2,5,10,20,50,100,200], 200)
