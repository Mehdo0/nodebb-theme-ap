'use strict';

console.log('AP Theme: client.js loaded');

$(document).ready(function () {
    // Function to transform navigation to bottom bar
    function transformNavigationToBottom() {
        // Look for the actual navigation element (it might be loaded dynamically)
        const navigationSelectors = [
            '[component="navigation"]',
            '.sidebar-left',
            '[component="sidebar/left"]',
            '.nav-pills.nav-stacked'
        ];
        
        let navElement = null;
        
        // Try to find the navigation element
        navigationSelectors.forEach(selector => {
            const element = document.querySelector(selector);
            if (element && !element.classList.contains('ap-bottom-navigation')) {
                navElement = element;
            }
        });
        
        if (navElement) {
            console.log('Found navigation element:', navElement);
            
            // Add our bottom navigation class
            navElement.classList.add('ap-bottom-navigation');
            
            // Move it to the bottom of the page
            document.body.appendChild(navElement);
            
            // Apply bottom navigation styles
            applyBottomNavigationStyles();
        }
    }
    
    function applyBottomNavigationStyles() {
        // These styles will be applied via our existing CSS
        // The .ap-bottom-navigation class triggers the transformation
    }
    
    // Initial transformation attempt
    transformNavigationToBottom();
    
    // Listen for page changes (NodeBB uses AJAX navigation)
    $(window).on('action:ajaxify.end', function() {
        setTimeout(transformNavigationToBottom, 100);
    });
    
    // Also try periodically for dynamic content
    let attempts = 0;
    const maxAttempts = 10;
    const interval = setInterval(() => {
        transformNavigationToBottom();
        attempts++;
        if (attempts >= maxAttempts) {
            clearInterval(interval);
        }
    }, 500);
});