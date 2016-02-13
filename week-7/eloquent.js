// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var caught = 5*5;
  console.log(caught);


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var num = 0; num <= 100; num ++) {
    if (num % 3 && num % 5 )
      console.log("FizzBuzz")
    else if (num % 3)
      console.log("Fizz");
    else if (num % 5)
      console.log("Buzz");
    else
      console.log(num);
}

// do {
// var food = prompt("What is your favorite food?");}
// while (!food);
//   alert("Hey! That's my favorite too!");



// Functions

// Complete the `minimum` exercise.

var min = function (x,y) {

console.log(Math.min(x, y));

}

min(0, 10);


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = { name: "Laura",
  age: 28,
  ff1: "pesto",
  ff2: "mushrooms",
  ff3: "feta cheese",
  quirk:"I take my coffee black with two ice cubes"
};