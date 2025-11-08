'use strict';

$(document).ready(function () {
    console.log('AP Theme: Creating bottom navigation with NodeBB routes');

	function getNavigationFromTemplate() {
		// Method 4: Get navigation from template data
		if (window.apNavigationData && window.apNavigationData.length > 0) {
			console.log('Found navigation data from template:', window.apNavigationData);
			return window.apNavigationData;
		}
		
		// Method 5: Extract from hidden navigation data element
		const navDataElement = document.getElementById('ap-navigation-data');
		if (navDataElement) {
			const navItems = navDataElement.querySelectorAll('.ap-nav-item');
			const navigation = [];
			navItems.forEach(item => {
				navigation.push({
					route: item.getAttribute('data-route'),
					title: item.getAttribute('data-title'),
					iconClass: item.getAttribute('data-icon'),
					active: item.getAttribute('data-active') === 'true',
					id: item.getAttribute('data-id')
				});
			});
			if (navigation.length > 0) {
				console.log('Extracted navigation from data element:', navigation);
				return navigation;
			}
		}
		
		return null;
	}
    
    function createBottomNavigation() {
		// Remove any existing bottom nav we created
		const existingNav = document.querySelector('.ap-bottom-navigation-js');
		if (existingNav) {
			existingNav.remove();
		}
		
		let navigationData = null;
		
		// Try template data first
		navigationData = getNavigationFromTemplate();
		
		// Then try other methods...
		if (!navigationData) {
			// [Keep the existing fallback methods here]
			// Method 1: Look for navigation data in window object
			if (window.navigation || (window.app && window.app.navigation)) {
				navigationData = window.navigation || window.app.navigation;
				console.log('Found navigation data in window object:', navigationData);
			}
			
			// Method 2: Look for navigation in DOM
			const navElements = document.querySelectorAll('[component="navigation"], .nav-pills, .sidebar-left');
			if (navElements.length > 0) {
				console.log('Found navigation elements in DOM:', navElements);
				navigationData = extractNavigationFromDOM(navElements);
			}
			
			// Method 3: Use default NodeBB routes as fallback
			if (!navigationData) {
				navigationData = getDefaultNavigation();
				console.log('Using default navigation data');
			}
		}
		
		// [Rest of the function remains the same...]
	}
    
    function extractNavigationFromDOM(navElements) {
        const navigation = [];
        navElements.forEach(navElement => {
            const links = navElement.querySelectorAll('a');
            links.forEach(link => {
                const href = link.getAttribute('href');
                const text = link.textContent.trim();
                const icon = link.querySelector('i');
                const iconClass = icon ? icon.className : '';
                
                if (href && text && !href.includes('javascript')) {
                    navigation.push({
                        route: href.replace(config.relative_path, ''),
                        title: text,
                        iconClass: iconClass,
                        active: link.classList.contains('active')
                    });
                }
            });
        });
        return navigation;
    }
    
    function getDefaultNavigation() {
        // Default NodeBB navigation routes
        return [
            { route: '/', title: 'Home', iconClass: 'fa-home' },
            { route: '/recent', title: 'Recent', iconClass: 'fa-clock' },
            { route: '/popular', title: 'Popular', iconClass: 'fa-fire' },
            { route: '/categories', title: 'Categories', iconClass: 'fa-list' },
            { route: '/tags', title: 'Tags', iconClass: 'fa-tags' },
            { route: '/users', title: 'Users', iconClass: 'fa-users' },
            { route: '/groups', title: 'Groups', iconClass: 'fa-group' },
            { route: '/unread', title: 'Unread', iconClass: 'fa-inbox' }
        ];
    }
    
    function getIconForRoute(route) {
        const iconMap = {
            '/': 'fa-home',
            '/recent': 'fa-clock',
            '/popular': 'fa-fire',
            '/categories': 'fa-list',
            '/tags': 'fa-tags',
            '/users': 'fa-users',
            '/groups': 'fa-group',
            '/unread': 'fa-inbox',
            '/search': 'fa-search',
            '/login': 'fa-sign-in',
            '/register': 'fa-user-plus',
            '/admin': 'fa-cog'
        };
        return iconMap[route] || 'fa-circle';
    }
    
    function getTitleForRoute(route) {
        const titleMap = {
            '/': 'Home',
            '/recent': 'Recent',
            '/popular': 'Popular',
            '/categories': 'Categories',
            '/tags': 'Tags',
            '/users': 'Users',
            '/groups': 'Groups',
            '/unread': 'Unread',
            '/search': 'Search',
            '/login': 'Login',
            '/register': 'Register',
            '/admin': 'Admin'
        };
        return titleMap[route] || 'Link';
    }
    
    function updateActiveStates() {
        const currentPath = window.location.pathname;
        const navLinks = document.querySelectorAll('.ap-bottom-navigation-js .nav-link');
        
        navLinks.forEach(link => {
            const href = link.getAttribute('href');
            if (href && (currentPath === href || currentPath.startsWith(href))) {
                link.classList.add('active');
                link.parentElement.classList.add('active');
            } else {
                link.classList.remove('active');
                link.parentElement.classList.remove('active');
            }
        });
    }
    
    // Create navigation immediately
    createBottomNavigation();
    
    // Recreate on page changes (NodeBB AJAX navigation)
    $(window).on('action:ajaxify.end', function() {
        setTimeout(createBottomNavigation, 100);
    });
    
    // Also try after delays in case page loads slowly
    setTimeout(createBottomNavigation, 1000);
    setTimeout(createBottomNavigation, 3000);
    
    // Debug: Log available global objects
    console.log('Available global objects:', Object.keys(window));
    if (window.app) {
        console.log('App object:', window.app);
    }
});