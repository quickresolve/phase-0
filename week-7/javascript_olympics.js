 // JavaScript Olympics

// I paired by myself on this challenge.

// This challenge took me [2] hours.


// Warm Up
/*
#1 Create a function that takes an array of athletes that include a name and event property. Your function should add a  win property to each athlete in the array.

#2 Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this.

#3 Create a function that accepts an array of numbers. Return an array with only the even numbers.

#4 Build the constructor function that will make this driver code work.

*/


// Bulk Up

var athletesObj = [
{name:'Larisa Latynina', event:'Gymnastics'},
{name:'Birgit Fischer', event: 'Canoeing'},
{name:'Jenny Thompson', event: 'Swimming'},
{name:'Valentina Vezzali', event: 'Fencing'}
]

var athletes = function (array) {
  for (var i in array) {
  array[i].win = array[i].name + " won the " + array[i].event + "Olympics!";
  console.log(array[i].win)
  };

}

athletes(athletesObj);
console.log(athletesObj);

// Jumble your words

var reverseString = function(string){
  return string.split("").reverse().join("");}

console.log(reverseString("my string"));


// 2,4,6,8
num_Array = [1, 2, 4, 3, 5, 6, 7, 8]
var even = [];

function evenArray(array){
  for (i in array){
    if (array[i] % 2 == 0)
      even.push(array[i]);
  }

}

evenArray(num_Array);
console.log(even);




// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

/*
What JavaScript knowledge did you solidify in this challenge?
Doing this challenge helped me solidify how to work with objects and arrays in JS. Manipulating the properties of objects in JS is quite different from Ruby.

What are constructor functions?

Constructor function type notation is preferred if you need to do some initial work before the object is created or require multiple instances of the object where each instance can be changed during the lifetime of the script.

function myObject(){
    this.iAm = 'an object';
    this.whatAmI = function(){
        alert('I am ' + this.iAm);
    };
};

> The constructor object has its properties and methods defined with the keyword 'this' in front of it, whereas the literal version does not.

> In the constructor object the properties/methods have their 'values' defined after an equal sign '=' whereas in the literal version, they are defined after a colon ':'.

> The constructor function can have (optional) semi-colons ';' at the end of each property/method declaration whereas in the literal version if you have more than one property or method, they MUST be separated with a comma ',', and they CANNOT have semi-colons after them, otherwise JavaScript will return an error.

With constructor functions you need to instantiate (create a new instance of) the object first; you do this by typing;

var myNewObject = new myObject();
myNewObject.whatAmI();




How are constructors different from Ruby classes (in your research)?

A class is an entity responsible for creating objects and defining the behaviour of objects. Classes may be objects in their own right, but if they are, they’re different from other types of objects.

In Ruby, classes are objects, but they’re special objects. For example, the String class in Ruby is not itself a string, it’s an object whose class is Class. All objects in a “classical” system have a class, and their class is a “class.” A “class” in Ruby is very different from an “instance of that class.” And the methods of a class are very different from the methods of an instance of that class.

JavaScript objects don’t have a formal class, and thus there’s no special syntax for defining how to create an instance or define its behaviour. JavaScript instances are created with a constructor. The constructor of an instance is a function that was invoked with the new operator. In JavaScript, any function can be a constructor.

There is no special kind of thing that constructs new objects, every function is (potentially) a constructor. That’s different from a true classical language, where the class is a special kind of object that creates new instances.

JS has prototypes which are objects, but unlike a classical system, there are no special methods or properties associated with a prototype. Any object can be a prototype, even an empty object.


SUMMARY:
A class in a formal classist language can be an object, but it’s a special kind of object with special properties and methods. It is responsible for creating new instances and for defining the behaviour of instances.

Instance behaviour in a classist language is defined with special syntax. If changes are allowed dynamically, they are done with special syntax and/or special methods invoked on the class.

JavaScript splits the responsibility for instances into a constructor and a prototype. A constructor in JavaScript can be any function. Constructors are responsible for creating new instances.

A prototype in JavaScript can be any object. Prototypes are responsible for defining the behaviour of instances. prototypes don’t have special methods or properties.

Instance behaviour in JavaScript is defined by modifying the prototype directly, e.g. by adding functions to it as properties. There is no special syntax for defining a class or modifying a class.

*/