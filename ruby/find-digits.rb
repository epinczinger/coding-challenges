# Link to the problem below
# https://www.hackerrank.com/challenges/find-digits/problem?h_r=internal-search

def findDigits(n)
  
    array = n.digits.reverse
    
    result = array.count {  |x| x!=0 && n % x == 0 }
        
end