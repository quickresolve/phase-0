// // pseudocode
// // 1


// Input: an array of numbers
// Output: a number (the sum of the array)
// Steps:
// -create an array of numbers
// -define sum counter which starts at zero
// -create a method that adds each number in the array to sum.
// -stop method once you've added each element in the array to the sum

// 2

//
// Input: An array of numbers
// Output:one number - the mean of the input
// Steps:
// - determine the length of the input array
// -  add each element in the array together with a starting value of zero to find the sum of the array (use the sum method above)
// -take the sum of the elements in the array and divide by the length of the array to determine the AVERAGE.
// -return the average.


// // 3


// Input: an array of numbers in order from smallest to largest.
// Output: the mean of the array
// Steps:
// -check to see if the length of the array is odd
// -if the length is odd, divide the length by 2 and round up. This is the index position of the median.
//Return this indexed element.
// -if the length of the array is even, divide the length of the array by 2 to get the middle index of the array(i).
//Take the middle indexed element(i)
//and add it to the next element in the array(i+1) and then divide by 2 to get the average of those two numbers.
// Return the average.

oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

// Initial solution



var sum1 = oddLengthArray.reduce(sum, 0);
var sum2 = evenLengthArray.reduce(sum,0);
function sum(a,b) {
  return a + b;
}


console.log(sum1);
console.log(sum2);

var test_number = 8;

var mean1 = mean(sum1, oddLengthArray);
var mean2 = mean(sum2, evenLengthArray);



function mean(x, Array) {
  return x / Array.length;
}


console.log(mean1);
console.log(mean2);


function median(Array) {
 if (Array.length % 2 === 0)
 { var i = Array.length / 2
  var a = i - 1
  var b = ((Array[i] + Array[a]) / 2).toFixed(1);
  console.log(b);}
 else if (Array.length % 2 !== 0) {
  var i = Math.ceil(Array.length /2)
  console.log(i);}
}

var median1 = median(oddLengthArray);
var median2 = median(evenLengthArray);



//refactored solution

//sum
var sum1 = oddLengthArray.reduce(sum, 0);
var sum2 = evenLengthArray.reduce(sum,0);

function sum(a,b) {return a + b;}

console.log(sum1); console.log(sum2);



//mean

var mean1 = mean(sum1, oddLengthArray);
var mean2 = mean(sum2, evenLengthArray);

function mean(x, Array) {return x / Array.length;}

console.log(mean1); console.log(mean2);


//median

function median(Array) {
 if (Array.length % 2 === 0)
 { var i = Array.length / 2;
   var a = ((Array[i] + Array[(i-1)]) / 2).toFixed(1); console.log(a);}
 else if (Array.length % 2 !== 0) { var i = Math.ceil(Array.length /2); console.log(i);}
}

var median1 = median(oddLengthArray); var median2 = median(evenLengthArray);