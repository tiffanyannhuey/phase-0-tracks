
// Take a string as a parameter
// For each letter in the string, print each letter starting with 
//the last letter to the first, reversing the string






var str = "hello";

for(var i = str.length - 1; i >= 0; i --) {
  console.log(str[i]);
}
