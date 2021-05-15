
def bestSum(targetSum, numbers, memo={})
    return memo[targetSum] if memo.has_key?(targetSum)
     return [] if targetSum === 0
     return nil if targetSum < 0

     shortestComb = nil
     
     numbers.each do |n|

        remainder = targetSum - n 
         remCombination = bestSum(remainder, numbers, memo)
        if remCombination != nil 
            combination = [*remCombination, n]
            if shortestComb == nil || combination.length < shortestComb.length
               shortestComb = combination
            end
        end
     end

  memo[targetSum] = shortestComb
  shortestComb
end
p bestSum(100,[1,2,3,4,5,25])

# Brute force
# time :  O(n^m * m)
# space : O(m^2)

# Memo