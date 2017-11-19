var currentPosition = [0,0,0,0,0,0,0,0,0,0];
var i = 0;
function plusSlide(n) {
  if(onSlide!='no'){
        var slider = document.getElementById(onSlide).children;
        var countDivInSlide = $('#'+onSlide+' #act_slide > a > div').size();
        if(n==-1){currentPosition[i] += 210;}else{currentPosition[i] -= 210;}
        if(currentPosition[i]<(countDivInSlide-4)*-210){currentPosition[i] =0;}
        if(currentPosition[i]>0){currentPosition[i] =(countDivInSlide-4)*-210;}
        if(countDivInSlide<5){currentPosition[i] =0;}
        slider[1].style.marginLeft = currentPosition[i]+'px';
  }
}
 

 //Faculty
$( "#faculty" )
  .mouseenter(function() {
    i=0;
    onSlide = 'faculty';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });
 //Civil
$( "#civil" )
  .mouseenter(function() {
    i=1;
    onSlide = 'civil';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });
 //Industrial
$( "#industrial" )
  .mouseenter(function() {
    i=2;
    onSlide = 'industrial';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });
 //Mechanical
$( "#mechanical" )
  .mouseenter(function() {
    i=3;
    onSlide = 'mechanical';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });
 //Electronic
$( "#electronic" )
  .mouseenter(function() {
    i=4;
    onSlide = 'electronic';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });
 //Computer
$( "#computer" )
  .mouseenter(function() {
    i=5;
    onSlide = 'computer';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });
 //Materials
$( "#materials" )
  .mouseenter(function() {
    i=6;
    onSlide = 'materials';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });
 //Environmental
$( "#environmental" )
  .mouseenter(function() {
    i=7;
    onSlide = 'environmental';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });
 //Chemical
$( "#chemical" )
  .mouseenter(function() {
    i=8;
    onSlide = 'chemical';
  })
  .mouseleave(function() {
    onSlide = 'no';
 });