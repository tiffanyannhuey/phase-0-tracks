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

// This function takes an integer for length, and builds and returns an array of strings of a given length
// There will need to be an empty array container for the strings to go into
  // Each string will be compiled of a series of letters
  // For each string, it should be a random length and a max of 10 letters
// Push each string back into the array
// Return the array of letters
// The array should then be entered into the longest word function 


function randomWords(count) {
var word_array = [];
var random_word = "";
var alphabet = "abcdefghijklmnopqrstuvwxyz";
var word_count = 0;
while ( word_count < count) {
   random_word =  "cats"; // = alphabet.charAt(Math.floor((Math.random() * 10) + 1) * alphabet.length); 
// I researched a method to generate a random number between 1-10, and then to create a random word with that number- it's not working 
// I tested this function with a set word "cats" and it seems to return the array
  word_array.push(random_word); 
  word_count += 1;
}
return word_array
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

// Add driver code to test out random word count
console.log(randomWords(3));
console.log(randomWords(5));



