def count_construct(target, wordBank)
    table = Array.new(target.length + 1, 0)

    table[0] = 1

    (target.length + 1).times do |i|
        wordBank.each do |w|
            if target.slice(i, w.length) === w
                table[i+w.length] += table[i]
            end
        end
    end

    table[target.length]
end

p count_construct('purple', ['purp', 'le', 'pur', 'ple'])