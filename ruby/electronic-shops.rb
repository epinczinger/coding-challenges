# Link to the problem below
# https://www.hackerrank.com/challenges/electronics-shop/problem
def getMoneySpent(keyboards, drives, b)
    maxP = -1;
    keyboards.each do |k|
        drives.each do |d|
            sum = k + d
            if  (sum <= b) && (sum > maxP)
                maxP = sum
            end
        end
    end
 maxP
end