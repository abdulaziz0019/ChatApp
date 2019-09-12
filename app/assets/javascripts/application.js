// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require semantic-ui
//= require_tree .
function scrollToBottom(id){
   var div = document.getElementById(id);
   div.scrollTop = div.scrollHeight - div.clientHeight;
}

$( document ).on('turbolinks:load', function() {
  $('.ui.rating').rating({initialRating: 1,maxRating: 10});


/// enabke scrolldown
  $('.message .close').on('click', function() {
  $(this).closest('.message').transition('fade');});
  scrollToBottom("messages-scroll")

// press enter to send message
  $("#submit-button").keypress(function(event) {
    if (event.which == 13) {
        event.preventDefault();
        $("form").submit();
    }
});
// disable button if field is empty
function success() {
	 if(document.getElementById("#text_filed").value==="") {
            document.getElementById('#submit-button').disabled = true;
        } else {
            document.getElementById('#submit-button').disabled = false;
        }
    }


// closing braces
})
