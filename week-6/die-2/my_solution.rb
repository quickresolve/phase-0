# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [2] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: One of the strings at random or an argument error if passed an empty array
# Steps:
# In this challenge you will create a more exciting Die class that takes an array of strings as its input. WhenDie#roll is called, it randomly returns one of these strings. If Die.new is passed an empty array, it should raise an ArgumentError.


# Initial Solution


class Die
  def initialize(labels)
    @labels = labels

    if labels.empty?
    raise ArgumentError.new("Cannot accept an empty array")
    end
  end


  def sides
    @labels.length
  end

  def roll
    @labels.shuffle!
    @labels[0]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels

    raise ArgumentError.new("Cannot accept an empty array") if labels.empty?

  end


  def sides
    @labels.length
  end

  def roll
    @labels.shuffle!
    @labels[0]
  end
end







# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The main differences between this challenge and the last die class challenge are that the input is an array and you are outputting a string at random instead of a number. I did not need to change much logic in order to get this to work.

What does this exercise teach you about making code that is easily changeable or modifiable?

This code teaches me that code can be easily modified based on the desired input and output. In this challenge I modified the input and output type as well as the method used to shuffle the die.

What new methods did you learn when working on this challenge, if any?

The new methods I learned were .shuffle & .empty?.

.shuffle -Returns a new array with elements of self shuffled.

.empty? - To check whether an array contains any elements at all

What concepts about classes were you able to solidify in this challenge?

I was able to solidify the concept of instance variable of classes while completing this method.

=end
