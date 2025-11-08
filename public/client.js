'use strict';

$(document).ready(function () {
    console.log('AP Theme: Bottom navigation enabled');
    
    // Function to ensure bottom nav is visible
    function ensureBottomNavVisible() {
        const bottomNav = document.querySelector('.ap-bottom-navigation');
        if (bottomNav) {
            bottomNav.style.display = 'flex';
        }
    }
    
    // Initial check
    ensureBottomNavVisible();
    
    // Check on page changes
    $(window).on('action:ajaxify.end', function() {
        setTimeout(ensureBottomNavVisible, 100);
    });
});