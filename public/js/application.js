var changeState = function(id) {
  $("#"+id).css('background-color', 'red');
};



$(document).ready(function () {

  $('a#sign-out').on("click", function (e) {
    e.preventDefault();
    var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
    request.done(function () { window.location = "/"; });
  });

$("li").on('click', function(){
  changeState(this.id);
  // clickBox(this.id);
});





});


// disablePlayer



