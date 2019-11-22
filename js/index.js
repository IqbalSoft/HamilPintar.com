// sidenav
$(document).ready(function(){
    $('.sidenav').sidenav();
});
// carousel
$(document).ready(function(){
	$('.slider').slider({
		indicators: false,
		height: 450,
		interval: 5000
	});
});
// parallax
$(document).ready(function(){
	$('.parallax').parallax();
});
// smooth scrooling
$(document).ready(function(){
  $(".page-scroll").click(function(event) {
    
    if (this.hash !== "") {
      event.preventDefault();
      var hash = this.hash;

      $('html, body').animate({
        scrollTop: $(hash).offset().top -70

      }, 1250, 'easeInOutExpo');
    }
  });  
});

