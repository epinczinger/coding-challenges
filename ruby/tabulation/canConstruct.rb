def canConstruct(target, wordBank)
    table = Array.new(target.length+1, false)
    table[0] = true

    (target.length).times do |i|
        if (table[i] === true)
            wordBank.each do |word|
                if (target.slice(i, word.length) === word)
                    table[i+word.length] = true
                end
            end
        end
    end
    p table
    table[target.length]
end

p canConstruct('abcdefg', ['ab', 'bc', 'd', 'abcd', 'ef', 'lg'])