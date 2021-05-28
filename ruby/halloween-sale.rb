def how_many_games(p, d, m, s, count = 0, spend=0)
    
    spend = spend + p 
    count+=1

    p >= m + d ? p = p-d : p = m

    spend + m <= s? how_many_games(p, d, m, s, count, spend) : count
    
end