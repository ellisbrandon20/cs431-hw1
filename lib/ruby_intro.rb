# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  #source - http://stackoverflow.com/questions/23572515/check-if-the-sum-of-two-different-numbers-in-an-array-equal-a-variable-number
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
  return false if s.empty? # empty string case
  return false if s.match(/[a-zA-Z]/) # invalid binary number
  
  int_s = s.to_i(10) # convert to int base 10
  return int_s % 2 == 0
  
end

# Part 3
# Define a class BookInStock which represents a book with an ISBN number, isbn, 
#   and price of the book as a floating-point number, price, as attributes. 
#   Run associated tests via: $ rspec -e 'getters and setters' spec/part3_spec.rb

# The constructor should accept the ISBN number (a string, since in real life ISBN 
#   numbers can begin with zero and can include hyphens) as the first argument and price as second argument, 
#   and should raise ArgumentError (one of Ruby’s built-in exception types) if the ISBN number is the empty string 
#   or if the price is less than or equal to zero. Include the proper getters and setters for these attributes. 
#   Run associated tests via: $ rspec -e 'constructor' spec/part3_spec.rb

# Include a method price_as_string that returns the price of the book formatted with a leading dollar sign 
#   and two decimal places, that is, a price of 20 should format as “$20.00” and a price of 33.8 should format 
#   as "$33.80". Run associated tests via: $ rspec -e '#price_as_string' spec/part3_spec.rb

# You can check your progress on the all the above by running rspec spec/part3_spec.rb.


class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError.new("Invalid ISBN number") if isbn.empty?
    raise ArgumentError.new("Invalid price") if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    s_price = "$%.2f" % price
  end
  
  
end
