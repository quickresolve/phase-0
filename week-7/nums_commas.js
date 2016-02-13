// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Andria Reta.

// Pseudocode
/*
Create a function separateComma. It should accept an integer as an argument and return a comma-separated integer as a string.

steps -
>Convert Integer to string
>IF integer is btwn 0 - 999 then print integer as string
>ELSE IF integer is btwn 1000 - 999999 reverse and insert comma in index position 3 then reverse again and print
>ELSE IF integer is btwn 1000000 - 99999999 reverse and insert comma in index position 3 and 7 then reverse again and print


*/



// Initial Solution

var seperateComma = function (integer) {
  var int_string = integer.toString();

  if (integer <= 999)
    {
    console.log(int_string);
    console.log(typeof int_string);
    }
  else if (integer >= 1000 && integer <= 999999)
    {
    var output = int_string.split("").reverse();
    output.splice(3,0,",");
    output.reverse();

    console.log(output.join(""));
    console.log(typeof output);
    }
  else if (integer >= 1000000 && integer <= 999999999)
    {
    var output = int_string.split("").reverse();
    output.splice(3,0,",");
    output.splice(7,0,",");
    output.reverse();


    console.log(output.join(""));
    console.log(typeof output);
    }
}

seperateComma(1000000)



// Refactored Solution

var seperateComma = function(integer) {
  var int_string = integer.toString();

  if (integer <= 999)
    {console.log(int_string);}
  else if (integer >= 1000 && integer <= 999999)
    {var output = int_string.split("").reverse(); output.splice(3,0,","); output.reverse(); console.log(output.join(""));}
  else if (integer >= 1000000 && integer <= 999999999)
    {var output = int_string.split("").reverse(); output.splice(3,0,","); output.splice(7,0,",");output.reverse(); console.log(output.join(""));}
}

seperateComma(1000000)


// Your Own Tests (OPTIONAL)




// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

We decided to approach the problem using a simple if/then conditional because our familiarity with the JS language and syntax is more limited we wanted to make sure we could structure the basics before trying to write dry code elegant code.


What did you learn about iterating over arrays in JavaScript?

We learned that the process is similar to iterating over arrays in Ruby, but we approached this problem using a different method than iteration.


What was different about solving this problem in JavaScript?

When calling methods on a variable in JS it is not as easy to string them together.

What built-in methods did you find to incorporate in your refactored solution?

We used the .split(), .join(), and .reverse() methods.

*/