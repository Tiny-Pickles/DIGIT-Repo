document.addEventListener( 'DOMContentLoaded',pageLoadUp,false);
 var search=document.getElementById("content")

function pageLoadUp() {
    alert ('The page loaded');
} 
let p = document.getElementById("p");
function search (){
let input = document.getElementById("p");
if (input !==''){
    let regExp = new RegExp(input, "gi");
    p.innerHTML = (p.textContent).replace(regExp, "<mark>${searched}</mark>'");
}
}
    

