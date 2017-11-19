var slideIndex = 0;
var inerval;
inerval = setInterval(slider, 3000);
slider();
function plusSlide(n) {
  if(n<0){
      slideIndex-=2;
  }
  console.log("n : "+n);
  console.log("slideIndex : "+slideIndex);
  slider();
  clearInterval(inerval);
  inerval = setInterval(slider, 3000);
}

function currentSlide(n){
  slideIndex=n-1;
  slider();
  clearInterval(inerval);
  inerval = setInterval(slider, 3000);
}

function slider(){
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    
    slideIndex++;
    
    if (slideIndex > slides.length) {
        slideIndex = 1;
    }    
    if (slideIndex < 1) {
        slideIndex = slides.length;
    }
    if (slideIndex> slides.length) {
        slideIndex = 1;
    }
    
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
        
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace("active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
}

$( ".mySlides" )
  .mouseenter(function() {
    clearInterval(inerval);
  })
  .mouseleave(function() {
    inerval = setInterval(slider, 3000);
 });