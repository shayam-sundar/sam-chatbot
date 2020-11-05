var winWidth = $(window).width();
$('.navbar-toggle').on('click', function(){
      $('.rightMenu').slideToggle();
});
if(winWidth < 769){
        $('.rightMenu li').on('click', function(){
            $('.rightMenu').slideUp();
        });
    }else{
}

if(winWidth < 769){
        $('.rightMenu li a').on('click', function(){
            $('.rightMenu').slideUp();
        });
    }else{
}
 
(function($) {
  "use strict"; // Start of use strict
  // Smooth scrolling using jQuery easing
  $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: (target.offset().top)
        }, 1000, "easeInOutExpo");
        return false;
      }
    }
  });
})(jQuery); // End of use strict


