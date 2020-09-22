# Link to the problem below
# https://www.hackerrank.com/challenges/the-hurdle-race/problem

def hurdleRace(k, height)

    max = height.max()
    
    k >= max ? 0 : max - k

end


