# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  puts "Hello, #{name}!"
end

def starts_with_consonant? s
  first_char = s.downcase[0]
  ('a'..'z').include?(first_char) && !'aeiou'.include?(first_char)
end

def binary_multiple_of_4? s
  return false unless s.match?(/^[01]+$/)

  decimal_number = s.to_i(2)
  decimal_number % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    validate_input
  end

  def display_info
    "ISBN: #{@isbn}, Price: $#{@price}"
  end

  private

  def validate_input
    raise ArgumentError, "ISBN should not be empty" if @isbn.empty?
    raise ArgumentError, "Price should be greater than zero" if @price <= 0
  end
end
