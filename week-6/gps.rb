def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # Sets a data structure with items to make and number of ingredients for each
    unless library.has_key?(item_to_make) #if its a new item, you get an error
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
  # Raises an argument error if the error_counter is greater than 0. Tells us that the input isn't valid.

  serving_size = library[item_to_make]
  #Set serving size equal to the value located at the given item_to_make key

  remaining_ingredients = num_of_ingredients % serving_size
  # Remaining ingredients equals the ratio of ingredients left over based on serving size

 p "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  #tells us that the calculations are complete and make the item with the resources that are available (number of ingredients divided by serving size)


  case remaining_ingredients
    when 0...5 #if not 0
        "You have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{remaining_ingredients} cookies" #Tells us calculations are complete. This is what you can make with whats available. Tells us remaining resources and suggests that you make another item with those remaining ingredients.
    when 5
     "You have #{remaining_ingredients} leftover ingredients. Suggested baking items: 1 cake"
  end

end

p serving_size_calc("pie", 19)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 12)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)




=begin

              Reflections

What did you learn about making code readable by working on this challenge?

I learned that the code can be simplified a lot more than I originally anticipated to create clean and dry code that still makes sense when reading it aloud. We were able to reduce our code from a little over 20 lines to about 15 lines while still adding the suggested baking items for leftover ingredients.

Did you learn any new methods? What did you learn about them?

The method I learned about during this challenge was #has_key? which checks if the hash contains a key.

What did you learn about accessing data in hashes?

I learned that accessing data in hashes can be done multiple ways, either by calling the key associated with it or by calling the index position it is in with the #values_at method.

What concepts were solidified when working through this challenge?

Working through this challenge solidified my understanding of counters, accessing keys and values in hashes, using the modulus to find the remainder, and using case statements.

=end



