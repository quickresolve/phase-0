#Release 2

#Full Name Greeting
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

def greeting(first_name, middle_name, last_name)

  puts "Hello #{first_name} #{middle_name} #{last_name}!"

end

greeting(first_name, middle_name, last_name)



#Favorite Number
puts "Enter your favorite number: "
fav_num = gets.chomp

def bigger_better_num(fav_num)
  bigger_num = fav_num +=1

  puts "#{bigger_num} is a bigger and better number than #{fav_num}."

end

=begin

                Reflections

-How do you define a local variable?

  A local variable is a variable which is either a variable declared within the function or is an argument passed to a function.

-How do you define a method?

  def method_name
   do stuff
  end

-What is the difference between a local variable and a method?

  >A local variable holds a value, whether it be a string, a number, or an array.

  >A method is a code block that carries out a procedure on a variable.

-How do you run a ruby program from the command line?

  You type ruby followed by file_name.rb

-How do you run an RSpec file from the command line?

  You type rspec followed by the spec-file-name.rb

-What was confusing about this material? What made sense?

  This material was basic review so far, I haven't encountered anything that was very confusing.

=end

#You can see my solution file on Github:

# https://github.com/quickresolve/phase-0/tree/master/week-4