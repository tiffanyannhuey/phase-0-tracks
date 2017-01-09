// This function takes an array of words and then returns the longest of the words
// Set a variable for the longest word - this can start out as the word at index 0
// For every word in the array, evaluate the length of each word to the first word 
// If the length of the word is greater or equal to the current longest word, the longest word variable will be overwritten
// Print out the largest word (first in the array)

function sortWords(array) {
  longestWord = array[0];
  for(var i=0; i<array.length; i ++ ) {
    var word = array[i];
    if (word.length >= longestWord.length) {
      longestWord = word;
    }
  }
  return longestWord;
}


// This function takes two objects as its input
// For each key in first object
  // If the value in the object1 key matches the value in the object2 key, return true
  // If the values do not match, then return false 



function objectMatcher (object1, object2) {
 for (var i in object1) {
    if (object1[i] == object2[i])
      return true;
      }
    if (object1[i] !== object2[i]) {
      return false;
    }  
  
}





// Add driver code that tests out the sort words array

var colorArray = ["Green", "Blue", "Yellow", "Pink"];
console.log(sortWords(colorArray));

var petsArray = ["dog", "cat", "bird", "snake"]
console.log(sortWords(petsArray));

// Add driver code to test out object match function

var steven = {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54};
var tiffany = {name: "Tiffany", age: 29};
var thing = {color: "red", alive: true}
console.log(objectMatcher(steven,tamir));
console.log(objectMatcher(steven, tiffany));
console.log(objectMatcher(steven,thing));





