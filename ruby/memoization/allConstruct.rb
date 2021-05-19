# no anda, algo pasaaaa con result o suffixWays

def allConstruct(target, wordBank, memo={})
    return memo[target] if memo.has_key?(target)
    return [[]] if target === '';

    result = []

    wordBank.each do |word|
        if target.index(word) === 0
            suffix = target.slice(word.size, target.size - word.size)
            suffixWays = allConstruct(suffix, wordBank, memo)
            targetWays = suffixWays.map do |way|
                 [word, *way]
            end
            result.push(*targetWays)
        end
        
    end
    memo[target] = result
    return result
end

p allConstruct('skateboard', ['sk', 'ateboard', 'skate', 'board', 'asdd'])