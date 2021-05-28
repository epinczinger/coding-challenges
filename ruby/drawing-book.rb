# Link to the problem below
# https://www.hackerrank.com/challenges/drawing-book/problem

def page_count(n, p)

    dif = (n - p).to_f
    num_pages = n.to_f / 2

    if dif >= num_pages
        p/2
    elsif dif < num_pages && n.even?
         p == n ? 0 : (dif + 1).to_i / 2
    else 
        p == n - 1 || p == n ? 0 : dif.to_i / 2
    end

end