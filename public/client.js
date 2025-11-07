'use strict';

/*
	Audemars Piguet Inspired Theme - Client Side
	Luxury high-horology aesthetic for NodeBB
	
	This is the client file for your theme. You can listen for page changes by writing:
	
	  $(window).on('action:ajaxify.end', function(ev, data) {
		var url = data.url;
		console.log('I am now at: ' + url);
	  });
*/

// Load Google Fonts for typography system
(function() {
	var link = document.createElement('link');
	link.rel = 'stylesheet';
	link.href = 'https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&family=Montserrat:wght@300;400;600;700&family=Lato:wght@300;400;600;700&family=Roboto:wght@300;400;500;700&family=Open+Sans:wght@300;400;600;700&display=swap';
	document.head.appendChild(link);
})();

$(document).ready(function () {
	// Add octagonal avatar class option (if needed for dynamic switching)
	// $('.avatar').addClass('avatar-octagon'); // Uncomment to enable octagonal avatars
	
	// Enhance luxury feel with subtle animations
	$('.btn').on('mouseenter', function() {
		$(this).css('transition', 'all 0.2s ease');
	});
});
