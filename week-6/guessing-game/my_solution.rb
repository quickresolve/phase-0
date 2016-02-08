# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer guess
# Output: high, low, or correct & true or false
# Steps:

# In this challenge you want to create a simple guessing game. Your GuessingGame class should be initialized with an integer called answer.

# Define an instance method GuessingGame#guess which takes an integer calledguess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if theguess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.
# In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory.


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer

  end


  def guess(guess)
    @guess = guess
    if @guess > @answer
     :high
    elsif @guess == @answer
     :correct
    elsif @guess < @answer
     :low
   end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end

end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer

  end


  def guess(guess)
    @guess = guess

     return :high if @guess > @answer
     return :correct if @guess == @answer
     return :low if @guess < @answer
  end

  def solved?
    @guess == @answer ? true : false

  end

end




# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables are the characteristics of a class object and methods define the behaviors that the object can display. The object is the instance of a class and the class provides the behaviors (methods) to the object.

When should you use instance variables? What do they do for you?

Instance variables are scoped to the class. They can be used within any method defined within a class. Instance variables are created when the object is created and stays as long as the method does.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control allows you to select different outcomes depending on information the user types, the result of a computation, or the value returned by another part of the program. I had no trouble utilizing flow control here once I had instance variables and methods that looped through the desired output in place.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

The code is requiring us to use symbols because they take up less memory and can be referenced by other methods in the program without having to instantiate them.

=end