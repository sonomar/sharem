$(document).ready(function() {
 
  var loadFeed = function(container, path) {
    $(container).append("<p id='loading'>Loading...</p>");
	  $.ajax({
	    dataType: 'html',
	    url: path
	  }).done(function(data){
	  	$('#loading').remove();
	    $(container).append(data);
	  });
	};

	var displayFeed = function(container, path) {
	 if($(container).find(".feed_data_area").length === 0) {
	   loadFeed(container, path); 
	 }
	 else {
	   $(container).find(".feed_data_area").toggle();
	 };
	};
 

	$('#daily_main a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#daily_main", "/dc_feed");
	});

	$('#unfccc a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#unfccc", "/unfccc_feed");
	});

	$('#unep a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#unep", "/unep_feed");
	});

	$('#nature a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#nature", "/nature_feed");
	});

	$('#skepsci a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#skepsci", "/skepsci_feed");
	});

	$('#yosemite a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#yosemite", "/yosemite_feed");
	});

	$('#nasa a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#nasa", "/nasa_feed");
	});

	$('#yale a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#yale", "/yale_feed");
	});

	$('#cakex a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#cakex", "/cakex_feed");
	});

	$('#iea a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#iea", "/iea_feed");
	});

	$('#umces a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#umces", "/umces_feed");
	});

	$('#sierraclub a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#sierraclub", "/sierraclub_feed");
	});

	$('#tcktcktck a').on('click', function(event) {	
	event.preventDefault();
    displayFeed("#tcktcktck", "/tcktcktck_feed");
	});

});
