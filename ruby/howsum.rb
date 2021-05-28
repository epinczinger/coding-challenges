def how_sum(targetSum, numbers, memo = {})

    return memo[targetSum] if memo.has_key?(targetSum)
    return [] if targetSum == 0;
    return nil if targetSum < 0; 

    numbers.each do |n|
        remainder = targetSum - n
        remainderResult = how_sum(remainder, numbers, memo)
        if remainderResult != nil
            memo[targetSum] = [*remainderResult, n]
            return memo[targetSum]
        end
    end

    memo[targetSum] = nil
    nil
end

p how_sum(300,[7,14])

# ForceBrute
# Time O(n^m * m)
# Space O(m)

# memo
# Time O(n*m^2)
# Space O(m^2)