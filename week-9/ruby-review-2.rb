# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
=begin
 Create a Class PezDispenser with the following attributes and methods:

 attributes - flavors


methods-
>initialize
>see_all_pez
>add_pez
>get_pez
>pez_count

=end


# Initial Solution

class PezDispenser
  def initialize(flavors)
    @flavors = flavors
  end
  def see_all_pez()
    print @flavors
  end
  def add_pez(flavor)
    @flavors << flavor
  end
   def get_pez()
    @flavors.shuffle!
    @flavors.pop
  end
  def pez_count()
    return @flavors.length
  end
end



# Refactored Solution

class PezDispenser
  def initialize(flavors)
    @flavors = flavors
  end
  def see_all_pez
    print @flavors
  end
  def add_pez(flavor)
    @flavors << flavor
  end
   def get_pez
    @flavors.shuffle!
    @flavors.pop
  end
  def pez_count
    return @flavors.length
  end
end



# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
=begin

What concepts did you review in this challenge?

In this challenge I reviewed creating a class, initializing attributes, creating class methods, working with driver code.

What is still confusing to you about Ruby?

Nothing about this challenge was confusing to me.


What are you going to study to get more prepared for Phase 1?

I am going to practice working with Ruby classes and inheritence prior to phase 1.

=end