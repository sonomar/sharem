$(document).ready(function() {
 
  var loadFeed = function(container, path) {
    $(container).append("<p id='loading'>Loading...</p>");
	  $.ajax({
	    dataType: 'html',
	    url: path
	  }).done(function(data){
	  	$('#loading').toggle();
	    $(container).append(data);
	  });
	};

	var displayFeed = function(container, path) {
	 if($(".feed_data_area").length === 0) {
	   loadFeed(container, path); 
	 }
	 else {
	   $(".feed_data_area").toggle();
	 };
	};
 

	$('#daily_main a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#daily_main", "/feed_list");
	});

});
