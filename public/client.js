'use strict';

// AP Theme: Bottom Navigation
$(document).ready(function () {
    // Function to handle active states
    function updateActiveStates() {
        const currentPath = window.location.pathname;
        const navLinks = document.querySelectorAll('.ap-bottom-navigation .nav-link');
        
        navLinks.forEach(link => {
            const href = link.getAttribute('href');
            if (href && (currentPath === href || currentPath.startsWith(href))) {
                link.classList.add('active');
            } else {
                link.classList.remove('active');
            }
        });
    }
    
    // Initial update
    updateActiveStates();
    
    // Update on navigation (NodeBB AJAX)
    $(window).on('action:ajaxify.end', function() {
        setTimeout(updateActiveStates, 100);
    });
});