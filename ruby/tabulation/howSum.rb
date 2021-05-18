def howSum(targetSum, numbers)
    table = Array.new(targetSum+1, nil)
    table[0] = []

    (targetSum+1).times do |i|
        numbers.each do |n|
            if table[i] != nil
                table[i + n] = [*table[i], n]
            end
        end
    end

    table[targetSum]
end

p howSum(12, [31,4,6,7])