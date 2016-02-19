# I worked on this challenge with: Ian Fricker.
# This challenge took me [2] hours.


# Pseudocode
# Write a method called super_fizzbuzz
# It should return a "fizzbuzzed" Array, i.e., the array is identical to the input with the following substitutions:

# Multiples of 3 should be replaced with the string "Fizz"
# Multiples of 5 should be replaced with the string "Buzz"
# Multiples of 15 should be replaced with the string "FizzBuzz"

#Steps:
#write a method that takes an array
#Method should contain an IF THEN statement that tests wether the numbers in the array are multiples of 3, 5, and 15 with a remainder (%) of 0. IF true print corresponding word FIZZ, BUZZ, or FIZZBUZZ in array instead of number.


#def super_fizzbuzz(array)
#  return fizzbuzzed array
#end


# Initial Solution

def super_fizzbuzz(array)
  count = 0
  i = 0
  arr = []
  while count < array.length
    if array[i] % 15 == 0
      arr[i] = 'FizzBuzz'
      i += 1
    elsif array[i] % 3 == 0
      arr[i] ='Fizz'
      i +=1
    elsif array[i] % 5 == 0
      arr[i] = 'Buzz'
      i += 1
    else
      arr[i] = array[i]
      i += 1
    end
    count += 1
  end
  return arr
end



# Refactored Solution

def super_fizzbuzz(array)
 array.each { |i|
    if i % 15 == 0
      array[i] = 'FizzBuzz'
    elsif i % 3 == 0
      array[i] ='Fizz'
    elsif i % 5 == 0
      array[i] = 'Buzz'
    else
      array[i] = array[i]
    end
  }
  return array
end


p super_fizzbuzz([1,2,3,4,5,6,7,8,9,10,15])

# Reflection
=begin
What concepts did you review or learn in this challenge?
This challenge allowed me to review iterating through Ruby arrays, using if/else statements, and working with test driven development.

What is still confusing to you about Ruby?

I feel that I have a good understanding of general Ruby concepts. I look forward to solving more complicated problems using Ruby.



What are you going to study to get more prepared for Phase 1?

I am going to continue reading the Well Grounded Rubyist.

=end