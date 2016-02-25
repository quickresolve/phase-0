// DOM Manipulation Challenge


// I worked on this challenge with: Andria Reta.


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

var d = document.getElementById("release-0");
d.className = "done";

//document.getElementById("release-0").className = "done";



// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:

//Change the inner text of the <h1> tag to "I completed release 2."

document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 5:



var all = document.getElementsByClassName("release-4");

for (var i=0, max=all.length; i<max; i++){

  all[i].style.fontSize = "2em";
}


//Release-6

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));