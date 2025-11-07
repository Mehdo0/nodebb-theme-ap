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

// Note: Icons removed per user request. This theme now uses text-only navigation and brand header.

$(document).ready(function () {
	// Add octagonal avatar class option (if needed for dynamic switching)
	// $('.avatar').addClass('avatar-octagon'); // Uncomment to enable octagonal avatars
	
	// Enhance luxury feel with subtle animations
	$('.btn').on('mouseenter', function() {
		$(this).css('transition', 'all 0.2s ease');
	});

	// Insert a simple, stylish brand header at the very top (text + optional image)
	function ensureBrandHeader() {
		if ($('.ap-brand-header').length) { return; }

		// Build elements so we can attach an onerror fallback if the image is missing
		var $header = $('<div>', { class: 'ap-brand-header', role: 'banner', 'aria-label': 'AP Club' });
		var $inner = $('<div>', { class: 'ap-brand-inner' });

		// We still support an optional logo image if the site administrator places it
		// at /assets/themes/nodebb-theme-ap/Audemars_Piguet_logo.png. If it's not present
		// we keep the textual brand ('AP Club'). The theme no longer replaces nav items
		// with icons.

		var $img = $('<img>', {
			class: 'ap-logo',
			src: '/assets/themes/nodebb-theme-ap/Audemars_Piguet_logo.png',
			alt: 'AP logo'
		});

		// Graceful fallback: if image fails, show a small text token instead of an icon
		$img.on('error', function () {
			var $fallback = $('<span>', { class: 'ap-logo-fallback', text: 'AP' });
			$(this).replaceWith($fallback);
		});

		var $text = $('<span>', { class: 'ap-brand-text', text: 'Club' });

		$inner.append($img).append($text);
		$header.append($inner);
		$('body').prepend($header);
	}

	ensureBrandHeader();

	// Re-insert on ajaxify page changes (NodeBB single-page navigation)
	$(window).on('action:ajaxify.end', function () {
		ensureBrandHeader();
	});

	// Run once on ready and re-ensure the brand header after ajax navigation
	$(window).on('action:ajaxify.end', function () { ensureBrandHeader(); });
});
