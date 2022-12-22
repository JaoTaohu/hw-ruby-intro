# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  if arr.empty? then return false end
  if arr.combination(2).any? { |x, y| x + y == n} then return true end  
  (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return ("Hello, #{name}")
end

def starts_with_consonant? s
  f = s.chr.downcase
  if f.match(/[a-z]/)
    if f.match(/[aeiou]/)
      return false
    end
    return true
  end
end

def binary_multiple_of_4? s
  if s.empty? 
    return false
  elsif s.match(/[a-z]/)
    return false
  elsif s.to_i % 4 == 0
    return true
  end

end

# Part 3

class BookInStock
  attr_accessor :isbn,:price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if isbn.empty? || price<=0 
  end
  def price_as_string
    return "$#{'%0.2f' % @price}"
  end
end
