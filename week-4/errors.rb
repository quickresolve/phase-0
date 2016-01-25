# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => Line 8
# 3. What is the type of error message?
# => Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
# => Unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# => cartmans_phrase is supposed to be on the left of the equal sign, while the phrase should be on the right. (Right-to-left associativity)
# 6. Why did the interpreter give you this error?
# => Right-to-left associativity property is not followed, therefore resulting in error.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => Line 35
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => Undefined local variable
# 4. Where is the error in the code?
# => Line 35, south_park has not been assigned a value.
# 5. Why did the interpreter give you this error?
# => Cannot declare variables with no value.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => Line 50.
# 2. What is the type of error message?
# => NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
# => Undefined method
# 4. Where is the error in the code?
# => Line 50.
# 5. Why did the interpreter give you this error?
# => cartman() should be defined in the following way:
# => def cartman()
      #does something
# => end

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => Line 68.
# 2. What is the type of error message?
# => ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments(1 for 0)
# 4. Where is the error in the code?
# => Line 72, when method is called with a string argument.
# 5. Why did the interpreter give you this error?
# => Because the method was defined as one that does not take arguments.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => Line 87.
# 2. What is the type of error message?
# => ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments(0 for 1).
# 4. Where is the error in the code?
# => Line 91. Method is called without providing parameter.
# 5. Why did the interpreter give you this error?
# => Method was defined as one that takes a single argument, none was passed when called.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => Line 108.
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => Line 112.
# 5. Why did the interpreter give you this error?
# => Method call passed only one argument rather than two.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => Line 127.
# 2. What is the type of error message?
# => TypeError.
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => The attempted multiplication of a string.
# 5. Why did the interpreter give you this error?
# => Because you cannot perform an arithmetic operaton on the string data type.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => Line 142.
# 2. What is the type of error message?
# => ZeroDivisionError.
# 3. What additional information does the interpreter provide about this type of error?
# => Divided by 0
# 4. Where is the error in the code?
# => End of operation divides by 0.
# 5. Why did the interpreter give you this error?
# => Dividing by zero results in error and is not computable.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 158.
# 2. What is the type of error message?
# => LoadError.
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /Users/johnholman/Desktop/SCHOOL/DBC/phase-0/Week 4: Ruby/cartmans_essay.md
# 4. Where is the error in the code?
# => Line 158.
# 5. Why did the interpreter give you this error?
# => Dependency nonexistant on local machine.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?

# => All errors are straightforward and made sense.

#How did you figure out what the issue with the error was?

# => Find the line of the error, what type of error it was, and why it wasn't passing.

#Were you able to determine why each error message happened based on the code?

# => Yes it was straightforward.

#When you encounter errors in your future code, what process will you follow to help you debug?

# => I will first find the line of said error, the error type, and then any additional info.