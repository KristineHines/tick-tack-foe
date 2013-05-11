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
  $('li').unbind();
  var cellId = this.id;
  console.log(cellId)
  console.log(currentPlayer)
  $.ajax({
    type: "post",
    url: "/game/"+gameId+"/update",
    data: {cell_to_change: cellId, player: currentPlayer}
  }).done(function(){
    console.log("I'm here")
  });

  $('li.x').unbind();
  $('li.o').unbind();

  changeState(this.id);
  // clickBox(this.id);
});





});


// disablePlayer



