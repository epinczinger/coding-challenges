# brute force (no memo)
# Time complexity O(2^(n+m))
# Space complexity O(n+m)

def grid_traveler(m,n, memo = {}) 
    key = "#{m}, #{n}"
    return memo[key] if memo.has_key?(key)
    if m==1 && n==1
        return 1
    elsif m==0 || n ==0
        return 0
    end
    memo[key] = grid_traveler(m-1, n, memo) + grid_traveler(m, n-1, memo)
    return memo[key]
end
# memoization
# Time complexity O(n*m)
# Space complexity O(n+m)
p grid_traveler(13,18)