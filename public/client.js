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

		// Build elements so we can attach an onerror fallback if the image is missing
		var $header = $('<div>', { class: 'ap-brand-header', role: 'banner', 'aria-label': 'AP Club' });
		var $inner = $('<div>', { class: 'ap-brand-inner' });

		var $img = $('<img>', {
			class: 'ap-logo',
			src: '/assets/themes/nodebb-theme-ap/Audemars_Piguet_logo.png',
			alt: 'AP logo'
		});

		// If the image fails to load, replace it with a textual fallback emblem
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

	// Replace navbar link text with minimalist icons (Font Awesome). Keeps accessible sr-only labels.
	function transformNavbarIcons() {
		if (typeof $ === 'undefined') { return; }
		var map = [
			{ test: function($a){ return ($a.attr('href')||'') === '/' || /home/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 11L12 4l9 7v7a2 2 0 0 1-2 2h-4v-5H9v5H5a2 2 0 0 1-2-2z"></path></svg>', label: 'Home' },
			{ test: function($a){ return ($a.attr('href')||'').indexOf('/categories') !== -1 || /category/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="8" height="8"></rect><rect x="13" y="3" width="8" height="8"></rect><rect x="3" y="13" width="8" height="8"></rect><rect x="13" y="13" width="8" height="8"></rect></svg>', label: 'Categories' },
			{ test: function($a){ return ($a.attr('href')||'').indexOf('/unread') !== -1 || /unread/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 8l9-5 9 5"></path><path d="M21 8v8a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8"></path></svg>', label: 'Unread' },
			{ test: function($a){ return ($a.attr('href')||'').indexOf('/recent') !== -1 || /recent/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="9"></circle><path d="M12 7v5l3 3"></path></svg>', label: 'Recent' },
			{ test: function($a){ return ($a.attr('href')||'').indexOf('/top') !== -1 || /top/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor" stroke="currentColor" stroke-width="0" stroke-linecap="round" stroke-linejoin="round"><path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path></svg>', label: 'Top' },
			{ test: function($a){ return ($a.attr('href')||'').indexOf('/tags') !== -1 || /tag/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20.59 13.41L13 21 3 11 11 3 20.59 13.41z"></path></svg>', label: 'Tags' },
			{ test: function($a){ return ($a.attr('href')||'').indexOf('/search') !== -1 || /search/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="7"></circle><path d="M21 21l-4.35-4.35"></path></svg>', label: 'Search' },
			{ test: function($a){ return ($a.attr('href')||'').indexOf('/login') !== -1 || /login/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path><path d="M10 17l5-5-5-5"></path><path d="M15 12H3"></path></svg>', label: 'Login' },
			{ test: function($a){ return ($a.attr('href')||'').indexOf('/logout') !== -1 || /logout/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><path d="M16 17l5-5-5-5"></path><path d="M21 12H9"></path></svg>', label: 'Logout' },
			{ test: function($a){ return /profile|account|user/i.test($a.attr('href')||'') || /profile|account|user/i.test($a.text()); }, iconSvg: '<svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>', label: 'Account' }
		];

		$('.navbar .nav-link').each(function () {
			var $a = $(this);
			// skip if we've already transformed
			if ($a.data('ap-iconized')) { return; }

			var matched = null;
			for (var i = 0; i < map.length; i++) {
				try {
					if (map[i].test($a)) { matched = map[i]; break; }
				} catch (e) { /* ignore */ }
			}

			if (matched) {
				// preserve href and other attributes, replace inner HTML with icon + sr-only label
				var icon = '<i class="fa ' + matched.icon + '" aria-hidden="true"></i>';
				var sr = '<span class="sr-only">' + matched.label + '</span>';
				$a.html(icon + sr);
				$a.data('ap-iconized', true);
			} else {
				// if no match, try to find the first word and use a generic icon
				var text = ($a.text()||'').trim();
				if (text) {
					var icon = '<i class="fa fa-circle" aria-hidden="true"></i>';
					var sr = '<span class="sr-only">' + text + '</span>';
					$a.html(icon + sr);
					$a.data('ap-iconized', true);
				}
			}
		});
	}

	// Run once on ready and after ajax navigation
	transformNavbarIcons();
	$(window).on('action:ajaxify.end', function () { transformNavbarIcons(); });
});
