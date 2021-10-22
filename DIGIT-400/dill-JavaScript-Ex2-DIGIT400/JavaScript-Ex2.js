function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
     var paras = document.getElementsByTagName("p")
    switch (id) {
        case "p1": {
            var para1 = document.getElementsByClassName("p");
            for (var i = 0; i < chars.length; i++) {
                chars[i].classList.toggle("on")
}
            

