# Fibonacci original
# Time complexity O(2^n)
# Space complexity O(n)

# def fib(n)
#   return 1 if n <= 2 
#   return fib(n-1) + fib(n-2)
# end

# memoization
# Time complexity O(n)
# Space complexity O(n)

def fib(n, memo = {})
  return memo[n] if memo.has_key?(n)
  return 1 if n <= 2 
  memo[n] = fib(n-1, memo) + fib(n-2, memo)
  return memo[n]
end

p fib(50)
