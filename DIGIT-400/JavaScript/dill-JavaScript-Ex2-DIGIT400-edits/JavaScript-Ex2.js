window.addEventListener( 'DOMContentLoaded',pageLoadUp,false);
 var search=document.getElementById("content")

function pageLoadUp() {
    alert('The page loaded');
    var input = document.getElementById("input")
    /* I understand now an ID is one of a kind while the class and tags could reference to more than one element or string*/
    input.addEventListener('keyup', searchMe, false)
} 


function searchMe() {
let input = document.getElementById("input");
let filter = input.value.toUpperCase();
let searchAreas = document.getElementsByTagName("p");
for (var i = 0, length = searchAreas.length; i < length; i++) 
{
      if (searchAreas[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
        searchAreas[i].style.display = "";
      } else {
        searchAreas[i].style.display = "none";
      }
    }
}
 /* I understand that this is an if statment embedded in a for loop*/   

