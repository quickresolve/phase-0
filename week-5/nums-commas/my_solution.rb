# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? positive integer

# What is the output? (i.e. What should the code return?) positive integer with commas after every third place as a string

# What are the steps needed to solve the problem?

#iterate through the integer and insert a comma after every third index place then convert the whole thing to a string.


# 1. Initial Solution
def separate_comma(pos_int)
 string = pos_int.to_s
  case pos_int
    when 0..999
      p string

    when 1000..999999
      p string.insert(-4,",")

    when 1000000..99999999
      p string.insert(-4,",").insert(-8,",")
  end

end


# 2. Refactored Solution

def separate_comma(pos_int)
  p pos_int.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end



# 3. Reflection

=begin

What was your process for breaking the problem down? What different approaches did you consider?

I broke this problem down by iterating through it with a loop and then inserting a comma after every third index point.  I tried many different approaches including an if else statement, using comparison operators with boolean && to check the range, slice, map, join, etc.

Was your pseudocode effective in helping you build a successful initial solution?

In this case I kept the pseudocode pretty basic so it was successful in helping me understand the problem and the desired outcome but not necessarily the steps needed to get there.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

When refactoring I decided to change my approach completely since there isn’t a simple way to refactor a case or switch statement. Instead I converted my integer to a string and then into an array so that I could #reverse, #slice, #map, & finally #join it with a comma then #reverse it back to it’s original order. Ruby documentation helped immensely in my finding and understanding how to use these enumerables.

How did you initially iterate through the data structure?

I initially iterated through the data structure using a case statement set to ranges of potential values, which passed the rspec but takes many more lines of code and would need to be added onto for increasingly higher integer values.

Do you feel your refactored solution is more readable than your initial solution? Why?

I feel my refactored solution is better at accomplishing the task more efficiently in less lines of code but I also feel it is not as simplistic as the original case statement which is easier to understand what is happening each step of the way.

=end