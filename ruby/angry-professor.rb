# Link to the problem below
# https://www.hackerrank.com/challenges/angry-professor/problem

def angryProfessor(k, a)
    
    on_time = a.count { |x| x <= 0 }

    k <= on_time ? 'NO' : 'YES'

end
