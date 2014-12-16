$(document).ready(function(){
  $('a.smooth_scroll').on('click',function (e) {
      e.preventDefault();

      var target = this.hash;
      $target = $(target);

      $('html, body').stop().animate({
          'scrollTop': $target.offset().top
      }, 900, 'swing', function () {
          window.location.hash = target;
      });
  });
});

$(document).ready(function() {
  $('#btn-start').on('click', function() {
    $('a[href="#join"]').tab('show');
  });
});

$(document).ready(function() {
  $('#btn-join').on('click', function() {
    // $('a[href="#join"]').tab('show');
  });
});

$(document).ready(function() {
  $('#btn-finish').on('click', function() {
    $('a[href="#challenge"]').tab('show');
  });
});