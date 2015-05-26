$(document).ready(function($) {

    $(".dropdown-toggle").dropdown();
    $(' .carousel').owlCarousel({
      dots: true,
      margin:30,
      responsive:{
        0:{
            items:1
        },
        430:{
            items:2
        },
        700:{
            items:3
        },
        1100:{
            items:4
        }
    }

  });

    $(" #pola").on('mouseenter', function() {
      $(this).removeClass('dezoom');
      $(this).addClass('zoom');
    });
    $(" #pola").on('mouseleave', function() {
      $(this).removeClass('zoom');
      $(this).addClass('dezoom');
      });

     $(" .owl-dot").on('click', function() {
      $(" .owl-dot").css({
      'opacity': 0.5
      });
      $(this).css({
      'opacity': 1
      });

    });


  });