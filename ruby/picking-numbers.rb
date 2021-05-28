# Link to the problem below
# https://www.hackerrank.com/challenges/picking-numbers/problem

def picking_numbers(a)
  
count = 0
  a_sorted = a.sort.uniq
  a_sorted.each do |val|
    consequitive_sums = a.count(val) + a.count(val - 1)
    if consequitive_sums > count
      count = consequitive_sums
    end
  end
  count
<<<<<<< HEAD
end

=======
end
>>>>>>> 5439474d8ea211055b77cad93caa74cd598f52e7
