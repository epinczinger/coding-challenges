def can_sum(targetSum, numbers, memo = {})
    return memo[targetSum] if memo.has_key?(targetSum)
    return true if targetSum === 0
    return false if targetSum < 0
 
    numbers.each do |n|
        remainder = targetSum - n
        if canSum(remainder, numbers, memo) ===true
            memo[targetSum] = true
            return true
        end
    end

    false
end
