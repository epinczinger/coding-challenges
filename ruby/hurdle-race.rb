# Link to the problem below
# https://www.hackerrank.com/challenges/the-hurdle-race/problem

def hurdleRace(k, height)

    max = height.max()
    
    k >= max ? 0 : max - k

end


p hurdleRace(3, [1,2,4,5,1,0])