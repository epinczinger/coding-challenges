# brute force (no memo)
# Time complexity O(2^(n+m))
# Space complexity O(n+m)

def gridTraveler(m,n, memo = {}) 
    key = "#{m}, #{n}"
    return memo[key] if memo.has_key?(key)
    if m==1 && n==1
        return 1
    elsif m==0 || n ==0
        return 0
    end
    memo[key] = gridTraveler(m-1, n, memo) + gridTraveler(m, n-1, memo)
    return memo[key]
end
# memoization
# Time complexity O(n*m)
# Space complexity O(n+m)
p gridTraveler(13,18)