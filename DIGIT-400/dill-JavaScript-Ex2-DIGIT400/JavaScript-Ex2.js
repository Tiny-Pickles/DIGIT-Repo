window.addEventListener( 'DOMContentLoaded',pageLoadUp,false);
 var search=document.getElementById("content")

function pageLoadUp() {
    alert ('The page loaded');
    var input = document.getElementById("input")
    {input[0].addEventListner("click", searchMe, false)}
} 
let p = document.getElementById("p");

function searchMe(){
let input = document.getElementById("input");
let filter = input.value.toUpperCase();
let searchArea=document.getElementById("p1")

if (searchArea[0].innerHTML.toUpperCase().indexOf(filter) > -1) searchArea [0]

if (input !==''){
    let regExp = new RegExp(input, "gi");
    p.innerHTML = (p.textContent).replace(regExp, "<mark>${searched}</mark>'");
}
}
    

