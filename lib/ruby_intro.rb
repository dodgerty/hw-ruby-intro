# When done, submit this entire file to the autograder.

# Part 1

#inject binary operator + to all elements of the array
def sum arr
  return arr.inject(0, :+)
end


def max_2_sum arr
  # YOUR CODE HERE
  temp_arr = arr.sort().last(2) #sort array and then take last 2 arguments (the 2 largest)
  return temp_arr.inject(0, :+)
  end

def sum_to_n? arr, n
  # YOUR CODE HERE
  pair_array = arr.combination(2) #create all possible 2pair combination and store into array
  pair_array.each {|e| 
    return true if sum(e) == n #if one of the pairs sums to 2
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s[0] =~ /[bcdfghjklmnprstvwxyzBCDFGHJKLMNPRSTVWXYZ]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  #bunch of gross conditionals 
  return false if s =~ /[^01]+/
  return false if s.length == 0
  num = s.to_i(2)
  return true if num % 4 == 0
  return false if num < 4
  
end

# Part 3

class BookInStock
# YOUR CODE HERE

  #constructor
  #instance variables:
  #   @isbn, @price
  
  def initialize(isbn, price)
    raise ArgumentError, "isbn empty" if isbn.length == 0
    raise ArgumentError, "invalid price" if price <= 0
    @isbn = isbn
    @price = price
  end
  
  #getters and setters
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  def isbn=(s)
    @isbn = s
  end
  
  def price=(p)
    @price = p
  end
  
  #return price as a formatted string to the second decimal
  def price_as_string()
    return "$%0.2f" %[@price]
  end
end
