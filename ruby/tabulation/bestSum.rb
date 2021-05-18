def bestSum(targetSum, numbers)
    table = Array.new(targetSum+1, nil)
    table[0] = []

    (targetSum+1).times do |i|
        if table[i] != nil
            numbers.each do |n|
                combination = [*table[i], n]
                if (!table[i+n] || table[i+n].length > combination.length)
                    table[i+n] = combination
                end

            end
        end
    end

    table[targetSum]
end

p bestSum(12, [3, 4,6])