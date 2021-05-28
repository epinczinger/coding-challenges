def can_construct(target, wordBank)
return true if target === ''

    wordBank.each do |word|
        
        if target.index(word) === 0
            suffix = target.slice(word.size, target.size)
            return true if can_construct(suffix, wordBank) === true
        
        end
    end

    return false
end

p can_construct("abcdefsdadas", ["abcdef", "b", "da", "s", "ff", "cdef"])