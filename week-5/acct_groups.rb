#pseudocode

# PASS IN list of names
# IF list > 5
#   Create new List
#   Randomize the names into new list
#   Split names into arrays in groups of 5
#   Print the split names
# ELSE
#   print the list



#initial solution

list_of_names = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]


def group_maker(list)
  if list.length > 5
    groups = []
    groups = list.shuffle
    groups.each_slice(5).to_a
    p groups
  else
    p list
end
end

group_maker(list_of_names)

#refactored solution

def group_maker(list)
  p list.shuffle.each_slice(5).to_a
end

group_maker(list_of_names)

#reflect

=begin

What was the most interesting and most difficult part of this challenge?

The most interesting & difficult part of this challenge was finding enumerables that would work to complete the methods.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes, the more practice I have writing pseudocode the easier it becomes going forward.

Was your approach for automating this task a good solution? What could have made it even better?

My approach for automating this task was very straightforward.

What data structure did you decide to store the accountability groups in and why?

I decided to use an array as my container because I didn’t need to assign any values to the list of names.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

The process of refactoring helped me to shorten my code several lines while still being easy to follow. In doing this, I learned the each_slice() method and the to_a method.

=end