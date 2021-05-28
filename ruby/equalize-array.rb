# Link to the problem below
# https://www.hackerrank.com/challenges/equality-in-a-array/problem?h_r=internal-search

def equalize_array(arr)
    count = 0
    array = arr.uniq
    array.each do |val|
        if arr.count(val) > count
            count = arr.count(val)
        end
    end
    arr.length - count
end