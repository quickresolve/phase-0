# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: John Holman.
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: card number
# Output: true or false
# Steps:

#create class CreditCard that validates 16 digit cc number

#create 3 methods to check credit card entered
#1 Method that reverses credit card number then doubles every digit until you reach the first
#2 Method that slices double digits then adds all digits together
#3 Method that checks if total sum is mod 10 ==0 return true or false



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard

def initialize(credit_card)
  @credit_card = credit_card

  unless @credit_card.to_s.length == 16
    raise ArgumentError.new("Invalid credit card.")
  end
end

def check_card
  nums = @credit_card.to_s.split('').reverse

  nums.each_with_index do |num,index|
    if index %2 == 0
      nums << num
    elsif index %2 == 1
      nums << (num.to_i*2).to_s
    end

  num_sum = 0

  nums.split('').to_i.each do |x|
    num_sum += x
  end

  if num_sum %10 == 0
    true
  else
    false
  end

 end

end

 end





# Refactored Solution

class CreditCard

def initialize(credit_card)
  @credit_card = credit_card

  unless @credit_card.to_s.length == 16
    raise ArgumentError.new("Invalid credit card.")
  end
end

def check_card
  nums = @credit_card.to_s.split('').reverse

  nums.each_with_index do |num,i|
    nums << num if i %2 == 0

    nums << (num.to_i*2).to_s if i %2 == 1

  num_sum = 0

  nums.split('').to_i.inject(0) {|num_sum, i|  num_sum + i }


  num_sum % 10 == 0 ? true : false
  end
end
end


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

The most difficult part of this challenge was getting the solution to pass all the rspecs.

What new methods did you find to help you when you refactored?

The methods I used to help me refactor were .each_with_index & .inject.


What concepts or learnings were you able to solidify in this challenge?

This challenge helped me to understand converting integers into an array and then manipulating the data in the array.

=end