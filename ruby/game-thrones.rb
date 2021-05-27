# Link to the problem below
# https://www.hackerrank.com/challenges/game-of-thrones/problem

def game_of_thrones(s)
    char_counted = Hash.new
    char_counted = get_char_count(s)
    
    char_counted.values.count{ |x| x.odd? } > 1 ? 'NO' : 'YES'
end

def get_char_count(s)
  char_count = Hash.new
  s.split('').each do |c|
    if char_count.has_key?(c) 
      char_count[c] = char_count[c] + 1
    else
      char_count[c] = 1
    end
  end
   char_count
end
