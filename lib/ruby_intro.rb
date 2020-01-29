# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if !(arr.any?)
        puts "zero?"
  end
  sum = 0
  for i in arr
      sum += i
  end
  sum
end

def max_2_sum arr
  if !(arr.any?)
    res = 0
  else
    max = arr.max
    i = arr.index(max)
    arr.delete_at(i)
    if arr.any?
      max_2 = arr.max
      res = max + max_2
    else
      max
    end
  end
end

def sum_to_n? arr, n
  res = false
  if !(arr.any?)
    res = false
  end
  arr.each_with_index do |value, index|
    j = index + 1
    while j != arr.length
      if (value+arr[j]) == n
        res = true
      end
      j += 1
    end
  end
  res
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s[0,1] =~ /[bcdfghjklmnpqrstvwxyz]/i
end

def binary_multiple_of_4? s
  if (!(s.to_s.strip.empty?) && (s !~ /[^01]/i) && ((s.to_i(2) % 4) == 0))
    true
  else
    false
  end
end

# Part 3

class BookInStock attr_accessor :isbn, :price
  def initialize(isbn,price) #isbn must be string, not empty; price must be float, not <= 0
    @isbn = isbn.to_s
    @price = price.to_f
    if ((@isbn.to_s.strip.empty?) || (@price <= 0))
      raise ArgumentError.new("Invalid input.")
    end
  end
  def price_as_string
    '$%.2f' % @price
  end
end

