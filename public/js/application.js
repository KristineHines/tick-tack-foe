var changeState = function(id) { 

 if (currentPlayer === currentPlayer1) {
  $("#"+id).css('background-color', 'red');
} else {
  $("#"+id).css('background-color', 'blue');
}
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



