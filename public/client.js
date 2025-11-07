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

// Ensure Font Awesome is available for icons (fallback to a stable v4 build for compatibility)
(function() {
	var fa = document.createElement('link');
	fa.rel = 'stylesheet';
	fa.href = 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css';
	fa.integrity = 'sha512-SfZ6C+f6Qb7m5q2hQm5kz6Q0s8E2v3J+F6G3z3Qjv3l2Yk5p7Q==';
	fa.crossOrigin = 'anonymous';
	document.head.appendChild(fa);
})();

$(document).ready(function () {
	// Add octagonal avatar class option (if needed for dynamic switching)
	// $('.avatar').addClass('avatar-octagon'); // Uncomment to enable octagonal avatars
	
	// Enhance luxury feel with subtle animations
	$('.btn').on('mouseenter', function() {
		$(this).css('transition', 'all 0.2s ease');
	});

	// Insert a simple, stylish brand header at the very top
	function ensureBrandHeader() {
		if ($('.ap-brand-header').length) { return; }
		// Updated to "AP Club" and structured inner markup for styling/emblem
		var header = '<div class="ap-brand-header" role="banner" aria-label="AP Club"><div class="ap-brand-inner">AP Club</div></div>';
		$('body').prepend(header);
	}

	ensureBrandHeader();

	// Re-insert on ajaxify page changes (NodeBB single-page navigation)
	$(window).on('action:ajaxify.end', function () {
		ensureBrandHeader();
	});
});
