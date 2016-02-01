# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: add name of hash - grocery list, add item += quantity
# output: string with item name, and quantity

# Method to remove an item from the list
# input: item name and optional quantity
# steps: name of hash - grocery list, remove item -= quantity
# output: string describing what was deleted and how much

# Method to update the quantity of an item
# input: item name and updated quantity
# steps: name of hash - grocery list, replace item quantity
# output: string describing what was updated and amount

# Method to print a list and make it look pretty
# input: call string and use a print method, add pretty verbage
# steps: print name of string with pretty verbage
# output: string describing list of grocery items and their quantity

#initial solution
def create_list(*items)
  list = Hash.new(0)
  items.each {|quant| list[quant] += 1}
  list
end

list = create_list("carrots", "apples", "cereal", "pizza", "carrots")


def remove_item(items, quant, list)
  list[items] -= quant
  list
end

#remove_item("carrots", 1, list)

def update_item(items, quant, list)
  list[items] = quant
  list
end

# update_item("carrots", 2, list)

def print_list(list)
  p "Grocery List"
  list.each do |items, quant|
    p "#{items}: #{quant}"
  end
end

print_list(list)




#Refactor

#refactoring took place while figuring out the initial solution



#Reflection

=begin

What did you learn about pseudocode from working on this challenge?

The pseudocode for this challenge was very straightforward and helped us to identify the steps we would need to take in order to complete each method of the program.

What are the tradeoffs of using Arrays and Hashes for this challenge?

If we were to use an array for this challenge, we could index the grocery items but not assign a quantity value to each item. Using a hash allowed us to assign a quantity value.

What does a method return?

A method return whatever variable you tell it to return after your method is complete.

What kind of things can you pass into methods as arguments?

You can pass into methods any kind of object including defined variables, integers, floats, strings, container methods, etc.


How can you pass information between methods?

You can pass information between methods by returning a value outside the method and then calling it in the argument. Alternatively if you make something a global variable it can be accessed by any method.


What concepts were solidified in this challenge, and what concepts are still confusing?

This challenged solidifies my understanding of creating several methods that can operate concurrently acting on the same data. At this point I feel that I have a good understanding of the concepts covered.

=end