
# I worked on this challenge [by myself, with: Phillip Barnett].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here
  if (a + b) > c && c > (a-b).abs
    return true
  else
    return false
  end

end

valid_triangle?(10,15,10)