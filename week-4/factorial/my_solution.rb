# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if(number > 1)
    number * factorial(number-1)
  else
    1
  end
end
