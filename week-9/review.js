/*
Pseudocode:

steps-
Create a groceries array
Create functions to add and remove grocery items
Create grocery list array

Create functions:
  add items to list
  remove items to list
  view list
*/

// Solution

var list = []

addItems = function(item) {
  list.push(item)
}
removeItems = function(item) {
  for (var items in list) {
    if (list[items] == item)
      delete list[items]
  }
}
viewList = function(list) {
  console.log(list)
}

addItems('bread')
addItems('cheese')
addItems('milk')
addItems('eggs')
addItems('flowers')
viewList(list)
removeItems('cheese')
viewList(list)

/*
Reflection:

What concepts did you solidify in working on this challenge?

Creating variables and arrays, reviewing the passing of information, objects, constructors, etc. Using a global variable so seperate functions can access the dataset.

What was the most difficult part of this challenge?

The most difficult part of this challenge was switching back to JS mindset after having worked on Ruby. Once I got back into the mindset, everything seemed to fall into place.


Did an array or object make more sense to use and why?

For my purposes an array made more sense to use because I did not elaborate specifics for each item. If I wanted to go more in depth with quantity of an item or a specific kind of bread for example, then using an object to add nested details would have made more sense to use.

*/