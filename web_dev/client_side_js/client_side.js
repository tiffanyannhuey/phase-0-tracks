console.log("The script is running!");

var h1s = document.getElementsByTagName('H1');

h1 = h1s[0];

h1.style.background = "Yellow";

h1.style.border = "3px solid red";

function create(htmlStr) {
  var text = document.createDocumentFragment (), 
      temp = document.createElement('div');
  temp.innerHTML = htmlStr;
  while (temp.firstChild) {
      text.appendChild(temp.firstChild);
  }
  return text;
}

var text = create('<div>Hello!</div>');

document.body.insertBefore(text, document.body.childNodes[3]);

function addPinkBorder(event) {
  event.target.style.border = "2px solid pink";
}

var p = document.getElementById("paragraph");
p.addEventListener("click", addPinkBorder);