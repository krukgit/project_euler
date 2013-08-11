
def permutations n
  return Array(1..n).inject(:*)
end

def nth_permutation n, list
  if list.length == 1
    return list
  end

  first = list[0]
  tail = list[1..-1]
  perm_num = permutations( tail.length )

  if perm_num >= n
    return [first] + nth_permutation( n, tail )
  else
    replacement = list[(n-1)/perm_num]
    tail = [first] + tail
    first = replacement
    tail.delete(replacement)
    n -= ((n-1)/perm_num)*perm_num
    if n == 0
      return [first] + tail
    else
      return [first] + nth_permutation(n, tail)
    end
  end
end


def check i, orig, expected
  got = nth_permutation(i, orig)
  p "#{got == expected} - expected #{expected}, got #{got}"
end

def verify
  nums = Array(0..3)
  check 1, nums, [0,1,2,3]
  check 2, nums, [0,1,3,2]
  check 3, nums, [0,2,1,3]
  check 4, nums, [0,2,3,1]
  check 5, nums, [0,3,1,2]
  check 6, nums, [0,3,2,1]
  check 7, nums, [1,0,2,3]
  check 8, nums, [1,0,3,2]
  check 9, nums, [1,2,0,3]
  check 10, nums, [1,2,3,0]
end

verify 

nums = Array(0..9)
n = 1000000
p nth_permutation(n, nums).join("")

