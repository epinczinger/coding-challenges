# Link to the problem below
# https://www.hackerrank.com/challenges/library-fine/problem?h_r=internal-search

def libraryFine(d1, m1, y1, d2, m2, y2)

    fine = 0
    if y1 - y2 > 0
        fine = 10000
    elsif m1 - m2 > 0 && y1 == y2
        fine = 500 * (m1 - m2)
    elsif d1 - d2 > 0 && m1 == m2 && y1 == y2
        fine = 15 * (d1 - d2)
    else 
        fine = 0
    end
    fine 

end