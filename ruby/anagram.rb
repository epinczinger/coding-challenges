# Link to the problem below
# https://www.hackerrank.com/challenges/anagram/problem?h_r=internal-search

def anagram(s)
    return -1 if s.length.odd?
      
    first_string = s[0, s.length/2]
    second_string = s[s.length/2, s.length]
      
    char_count1 = Hash.new
    char_count1 = get_char_count(first_string)
    char_count2 = Hash.new
    char_count2 = get_char_count(second_string)
      
    diff = 0
      
    char_count1.each_key do |key| 
      one_char_diff = 0;
      if char_count2.has_key?(key)
        current_diff = char_count1[key] - char_count2[key]
        one_char_diff = current_diff if current_diff > 0 
      else
        one_char_diff = char_count1[key]
      end
      diff = diff + one_char_diff
    end
     diff
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