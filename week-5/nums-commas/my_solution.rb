# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? positive integer

# What is the output? (i.e. What should the code return?) positive integer with commas after ever third place as a string

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




# 3. Reflection