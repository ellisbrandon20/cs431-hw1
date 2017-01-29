# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    false
  else
    s = s.downcase
    if !s[0].match(/[a,e,i,o,u]/) && s[0].match(/^[[:alpha:]]$/)
      true
    else
      false
    end
  end
  
end

def binary_multiple_of_4? s
  # Define a method binary_multiple_of_4?(s) that takes a string and 
  # returns true if the string represents a binary number that is a multiple of 4. 
  # NOTE: be sure it returns false if the string is not a valid binary number! 

  return false if s.empty? # empty string case
  return false if s.match(/[a-zA-Z]/) # invalid binary number
  
  int_s = s.to_i(10) # convert to int base 10
  return int_s % 2 == 0
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
