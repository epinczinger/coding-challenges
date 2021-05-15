def gridTraveler(m, n)
    table = Array.new(m+1){ Array.new(n+1, 0)}

    table[1][1] = 1
    
    (m+1).times do |i|
        (n+1).times do |j|
            current = table[i][j]
            if j+1 <= n 
                table[i][j+1] += current
            end
            if i+1 <= m 
                table[i+1][j] += current
            end     
        end
    end
    table[m][n]
end

p gridTraveler(3,3)