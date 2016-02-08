#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: name in the form of a string
# Output: greeting with the name included
# Steps:

# You will have 2 classes, NameData and Greetings. NameData will initialize a @name variable with your name. Greetings will initialize an instance of NameData and include a method to display a salutation to the console.



class NameData
  attr_accessor :name

  def initialize
    @name = name
  end
end


class Greetings

  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello Student! How wonderful to see you today."
  end
end

greet = Greetings.new
p greet.hello



# Reflection
=begin
Release: 1
What are these methods doing?

These methods are overwriting the initial values assigned to the instance variables with the new data.

How are they modifying or returning the value of instance variables?

They are modifying them by instantiating the new object data.

Release: 2

What changed between the last release and this release?

 attr_reader :age was added.

 Now we have a method called #.age which returns the value of @age, just like what_is_age did. Thanks to attr_reader :age.

What was replaced?

This code is no longer needed.
  def what_is_age
   @age
  end


Is this code simpler than the last?

Yes it uses less lines of code and memory.


Release: 3

What changed between the last release and this release?

attr_writer :age was added.

instance_of_profile.age = 28 # This method has changed!

What was replaced?

  # This code is no longer needed
  # def change_my_age=(new_age)
  #   @age = new_age
  # end

Is this code simpler than the last?

Yes it uses less lines of code and memory.

Release: 6

What is a reader method?

is a reader(getter) which means that it just returns a value or state outside of the class, but does not change it.

What is a writer method?

 is a writer(setter) which means that you can change the value of the variable outside of the class, but it is not readable.

What do the attr methods do for you?

 is both a reader and a writer. It can be used to return and change the value of the variable.

Should you always use an accessor to cover your bases? Why or why not?

Having all instance variables changeable when you really just want them read could lead to difficult debugging problems down the line, not to mention that it could compromise the security of your data. It is a safeguard against accidentally giving other methods and classes too much access to the inner workings of others.

What is confusing to you about these methods?

I feel that I have a good understanding of these methods after completing this challenge.

=end