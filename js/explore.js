
// Reverse the Word 
// Take a string as a parameter
function reverse(string) {

// Create an empty string to add new letters to
var reversedString = '';

// For each letter in the string, print each letter starting with 
// the last letter to the first, reversing the string
// Loop through the length of the string until the index reaches 0

for(var i = string.length - 1; i >= 0; i --) {
  reversedString += string[i];
}
// Print the reversed string
return reversedString;

}

//Driver code to test the function

// Prompt the user for a word
console.log("Give me a word to reverse");
var userWord = prompt("Enter a word.");
// assign the result of the function to a new variable
var result = reverse(userWord);
// Print out the variable
console.log("The new word is " + result);




// Add driver code that prints out the variable if condition is true


// create two variables
var num1 = 1;
var num2 = 1;

// make an IF statement 
// if the condition is true, then print out the variables
if (num1 === num2) {
console.log( num1 + " and " + num2 + " are the same number");
}
// else if condition is false, do not print variables
else {
console.log("These variables are not the same ");
}
