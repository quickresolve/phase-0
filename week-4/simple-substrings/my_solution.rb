# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

def welcome(address)
  address.to_s.upcase
  if address.include?("CA")
    "Welcome to California"
  else
    "You should move to California"
  end
end

welcome("1234 This St Oakland, CA 94601")

