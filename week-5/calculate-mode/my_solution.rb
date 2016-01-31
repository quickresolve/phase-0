# Calculate the mode Pairing Challenge

# I worked on this challenge with: Andria

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) The most frequently found object in the array
# What are the steps needed to solve the problem?
#first put the numbers in order, then count how many of each number, then return value that repeats most frequently



# 1. Initial Solution

def mode(array)

 mode_return = Hash.new(0)

  array.each do |v|
   mode_return[v] += 1
  end


 mode_return.each do |v|
  if v == mode_return.values.max
    p v
  end
end

end

mode(["apples","apples","tiger"])




# 3. Refactored Solution

def mode(array)
 mode_return = array.inject({}) { |k, v| k[v] = array.count(v); k }
 mode_return.select { |k,v| v == mode_return.values.max }.keys
end

mode(["apples","apples","tiger"])



# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?

My pair and I started with an array and inserted the data into a hash because it allowed us to assign a value for each object while also being quicker to access.

array = []
hash = {}

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Yes, using the pseudocode helped me to better understand the steps I needed to take in order to complete this assignment.

What issues/successes did you run into when translating your pseudocode to code?

The issues we ran into were trying to make sure we understood what was happening behind the scenes for the enumerable classes. We tried to make our initial solution as basic as possible so that anyone could understand what was happening.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

The methods we used to iterate through the content included, for the initial solution the #each method and for the refactored solution #inject and #select. None of these were difficult to implement once we understood what each method could be used for and how to apply it.

#each - Calls the given block once for each element in self, passing that element as a parameter.

#inject - Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.

#select-Returns an array containing all elements of enum for which the given block returns a true value.

=end