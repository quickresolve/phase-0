# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 4
# ============================================================
p array[1]

p array[1][1]

p array[1][1][2]

p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


number_array.map! do |number|
  if number.kind_of?(Array)
    number.map! {|inner| inner += 5}
  else
    number += 5
  end
end
p number_array




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


startup_names.each do |word|
  if word.is_a?(String)
    word << "ly"
  else
  word.each do |inner_element|
    if inner_element.is_a?(Array)
      inner_element.each do |third_layer_element|
         third_layer_element << "ly"
       end
    else
      inner_element << "ly"
    end
  end
end
end

p startup_names


=begin

                Reflections

What are some general rules you can apply to nested arrays?

Arrays are the simplest Ruby collections. Most methods operating on collections will return an Array as a result, even if the original collection was not one. You can make them act like sets, stacks, or queues. They are the functional equivalent of Python lists.

In order to access elements in nested arrays you have to identify their index position in each level.

What are some ways you can iterate over nested arrays?

You can iterate over nested arrays using the same methods as you would use to iterate over the array itself, you just have to make sure you are indexing within each level of the array in order to access the item you want.

ex: nested_data[:array][1][:hash]


You can use an if statement to iterate through an array within an array -

if number.kind_of?(Array)
    number.map {|inner| inner += 5}

You can also call an #each enumerable inside of another #each enumerable -

startup_names.each do |word|
    word.each do |inner_element|


Did you find any good new methods to implement or did you reuse one you were already familiar with? What was it and why did you decide that was a good option?

The methods we implemented in this challenge included -

.map! - Invokes the given block once for each element of self, replacing the element with the value returned by the block. If no block is given, an Enumerator is returned instead.

.kind_of? - Returns true if class is the class of obj, or if class is one of the superclasses of obj or modules included in obj.

.each - Calls the given block once for each element in self, passing that element as a parameter.

.is_a? - Returns true if class is the class of obj, or if class is one of the superclasses of obj or modules included in obj.

.concat (<<) - Appends the elements of other_ary to self.

=end