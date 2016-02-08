# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: sides
# Output: random number
# Steps:
#Create Die class, initialize sides, raise argument error IF sides < 1, create method to return # of sides, create method to return random number.


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError
    end
  end

  def sides
    return @sides
  end

  def roll
    return 1+rand(@sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides

    raise ArgumentError if sides < 1

  end

  attr_reader :sides

  def roll
   1+rand(@sides)
  end
end






# 4. Reflection

=begin

What is an ArgumentError and why would you use one?

You use an ArgumentError when the arguments are wrong and there isn’t a more specific Exception class. For example if the wrong number of integers or characters are entered, then you would return an argument error.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

In this challenge I created a class, initialized it, and added methods to return specific values based on the input.

What is a Ruby class?

A class is the blueprint from which individual objects are created. When a new class is created, an object of type Class is initialized and assigned to a global constant.

Why would you use a Ruby class?

You would use a Ruby class to help you organize methods to be used in the future.

What is the difference between a local variable and an instance variable?

A local variable is only available locally inside of a specific method whereas an instance variable corresponds to a specific class.

Where can an instance variable be used?

Instance variables can be used in any method in the program as long as you call it with an @ symbol.


=end