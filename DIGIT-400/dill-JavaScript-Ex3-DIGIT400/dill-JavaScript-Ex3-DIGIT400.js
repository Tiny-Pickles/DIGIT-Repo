var items = document.getElementById("timeline")
 
function timeline() {
  for (var i = 0; i < items.length; i++) {
    if (isElementInViewport(items[i])) {
      items[i].classList.add("in-view");
    }
  }
}
 
window.addEventListener("load", timeline);
window.addEventListener("scroll", timeline);

/* ged: I am trying to make a scrolling timeline for the articles page of the website where each 
 * article will appear as you scroll down the page.  */