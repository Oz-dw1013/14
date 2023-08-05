// Smooth scrolling when clicking on links
$(document).ready(function() {
    $('a[href^="#"]').on('click', function(e) {
      e.preventDefault();
  
      const target = $(this.hash);
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
      }
    });
  });
  