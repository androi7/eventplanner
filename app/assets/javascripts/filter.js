$(document).ready(function(){
  $('.bg-dark').hover(function() {
    $(this).removeClass('bg-dark').addClass('bg-secondary').addClass('border-primary');
  }, function() {
    $(this).removeClass('bg-secondary').removeClass('border-primary').addClass('bg-dark');
  });
});
