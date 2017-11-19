function init() {
    window.addEventListener('scroll', function(e){
        var distanceY = window.pageYOffset || document.documentElement.scrollTop,
            shrinkOn = 100,
            header = document.querySelector("icon");
        if (distanceY > shrinkOn) {
            $('.icon').css('margin-top','-125px');
            $('.navbar').css('margin-top','0px');
            $('.navbar').css('margin-bottom','5px');
        } else {
            $('.icon').css('margin-top','0px');
            $('.navbar').css('margin-top','20px');
            $('.navbar').css('margin-bottom','20px');
        }
    });
}
window.onload = init();