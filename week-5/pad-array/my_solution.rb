# Pad an Array

# I worked on this challenge by myself.

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) An array
# What are the steps needed to solve the problem?
#Method takes array argument, check if array length is >= min_size. If smaller than minimum, push pad until length is >= min_size.


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  count = array.length
  until count == min_size
    array.push(value)
    count += 1
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array
  count = new_array.length
  until count == min_size
    new_array.push(value)
    count += 1
  end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  count = array.length
  array.push(value) until count == min_size
    count += 1
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array
  count = new_array.length
  new_array.push(value) until count == min_size
    count += 1
end

# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?

Yes, pseudo coding this problem helped me complete it more efficiently.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Yes, the difficulties I had consisted of cementing the idea of destructive versus non-destructive methods and how to show the difference between the two in my program.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

My initial solution was not successful, nor was my initial attempt at refactoring. I ended up missing or including too many ends for my looping method.

When you refactored, did you find any existing methods in Ruby to clean up your code?

No, I just combined two lines in each solution to shorten the code.

How readable is your solution? Did you and your pair choose descriptive variable names?

I think my code is very readable, the variable names are straightforward.

What is the difference between destructive and non-destructive methods in your own words?

The difference between destructive and non-destructive methods is that the destructive method changes the receiver data or object while the non destructive leaves the receiver data or object in tact and creates a new one.

=end