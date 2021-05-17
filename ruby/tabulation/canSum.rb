def canSum(targetSum, numbers)
    table = Array.new(targetSum+1,false)
    table[0] = true

    (targetSum+1).times do |i|
        if table[i] === true 
            numbers.each do |number|
                table[i + number] = true
            end
        end
    end
    table[targetSum]
end

p canSum(14,[9,9,5])