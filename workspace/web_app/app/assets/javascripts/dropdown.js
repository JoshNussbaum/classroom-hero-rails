$(document).ready(function(){
    $("#how-it-works-btn").click(function(){
        if($(".how-it-works-panel").css("display") == "none"){
            setTimeout(function(){$(".how-it-works-panel").slideDown(600);}, 
            100);
        }
        else{
            setTimeout(function(){$(".how-it-works-panel").slideUp(600);}, 
            100);
        }
    });
});

$(function() {
  $('a[href*=#]:not([href=#]):not(.carousel-control)').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});

$("#signInModal").modal({
    backdrop: false,
    show: false
});

$("#signUpModal").modal({
    backdrop: false,
    show: false
});