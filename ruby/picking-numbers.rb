# Link to the problem below
# https://www.hackerrank.com/challenges/picking-numbers/problem

def pickingNumbers(a)
  
count = 0
  a_sorted = a.sort.uniq
  a_sorted.each do |val|
    consequitive_sums = a.count(val) + a.count(val - 1)
    if consequitive_sums > count
      count = consequitive_sums
    end
  end
  count
end

