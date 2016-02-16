 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
/*
Mission is to teach the Octopus how to hug without getting SQUISHED!
*/
// Overall mission:
/*
Communicate to the octopus through kisses when it is squeezing too tightly before your health is depleted while increasing it's huggability factor.
*/
// Goals: Increase Huggability, Don't get Squished!
// Characters: Octopus & Mermaid(Player)
// Objects:Octopus(huggability, number of tentacles), Mermaid(health, kisses)
// Functions: squeeze, moreKiss, lessKiss, addTentacle, removeTentacle

// Pseudocode
//Declare a 'mermaid' object that will have a health & kissRate properties with functions to increase or decrease.
//Declare an 'octopus' object that will have huggability and random numberOfTentacles properties with addTentacle and removeTentacle & change huggability functions.
//Mermaid must communicate through kisses if the octopus is squeezing with too many tentacles. If squeezing too much health will decrease.
//The more tentacles the higher the octopus' huggability rating.
//If mermaid health and octopus huggability equal, success! If mermaid health equal zero, the mermaid has been squished & game over!

// Initial Code

var mermaid = {
health: 100,
kissRate: 50,
success:false,
kiss: function(rate){
  if (rate === 'more'){
    this.kissRate += 20;
  }
  else if (rate ==='less'){
    this.kissRate -= 20;
  }
}
};

var octopus = {
huggability: 0,
numberOfTentacles: Math.floor(Math.random() * (8 - 0 + 1))};

//numberOfTentacles effects health of mermaid
function healthPos (){
  if (octopus.numberOfTentacles > 4){
    mermaid.health -= 20;
  }
  else if (octopus.numberOfTentacles < 4){
    mermaid.health += 20;
  }

};
//Display mermaid health
console.log("Mermaid health is at " + mermaid.health);


//kissRate effects numberOfTentacles & octopus huggability
function tentacleHugs() {
  if (mermaid.kissRate > 50){
    octopus.numberOfTentacles += 1;
    octopus.huggability += 15;
  }
  else if (mermaid.kissRate < 50){
    octopus.numberOfTentacles -= 1;
    octopus.huggability -= 15;
  }
};

//Display number of tentacles and octopus huggability
console.log("Octopus squeezing with " + octopus.numberOfTentacles + "tentacles and has a huggability rating of " + octopus.huggability + "!");

//After every move, check if mermaid health and octopus huggability equal
if (mermaid.health === 0){
  console.log("You are not a very good communicator and have been SQUISHED! GAME OVER!")
}
else if (mermaid.health === octopus.huggability) {
  mermaid.success = true;
  console.log("You communicated effectively with kisses teaching the octopus how to hug! You Win!");
}


mermaid.kiss('more');
mermaid.kiss('less');
mermaid.kiss('more');
mermaid.kiss('more');
mermaid.kiss('less');


// Refactored Code


//Nothing to refactor at this time.



// Reflection
/*
What was the most difficult part of this challenge?
The most difficult part of this challenge was figuring out how to write the functions to interact with the properties of each object.

What did you learn about creating objects and functions that interact with one another?

After getting started I learned that it is very easy to reference objects properties using the dot method.

Did you learn about any new built-in methods you could use in your refactored solution?
If so, what were they and how do they work?

Not at this time, but I will add more later.

How can you access and manipulate properties of objects?

You can access and manipulate properties of objects simply by using the objectsName.property and then manipulating it as part of a function.

*/
//
//
//
//
//
//