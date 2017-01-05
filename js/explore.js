
// Take a string as a parameter
function reverse(string) {

// create an empty string to add new letters to
var reversedString = '';

// For each letter in the string, print each letter starting with 
//the last letter to the first, reversing the string
// Loop through the length of the string until the index reaches 0

for(var i = string.length - 1; i >= 0; i --) {
  reversedString += string[i];
}
// Print the reversed string
console.log(reversedString);

}

//Driver code to test the function
(reverse("Hello"));