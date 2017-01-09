// This function takes an array of words and then returns the longest of the words
// The input would be an array
// Set a variable for the longest word - this can start out as the word at index 0
// For every word in the array, evaluate the length of each word to the first word 
// Sort the length of each word from largest to smallest
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

// Add driver code that tests out the sort words array

var colorArray = ["Green", "Blue", "Yellow", "Pink"];
console.log(sortWords(colorArray));

var petsArray = ["dog", "cat", "bird", "snake"]
console.log(sortWords(petsArray));

