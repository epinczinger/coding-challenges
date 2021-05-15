def fib(n)
    table = Array.new(n+1, 0)
    table[1] = 1
    n.times do |i|
        if i+1 <= n
        table[i+1] += table[i]
        end
        if i+2 <= n
        table[i+2] += table[i]
        end
    end
    table[n]
end

p fib(7)