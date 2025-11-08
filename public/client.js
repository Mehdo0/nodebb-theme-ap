'use strict';

$(document).ready(function () {
    console.log('AP Theme: Static bottom navigation enabled');
    
    // Function to update active states
    function updateActiveStates() {
        const currentPath = window.location.pathname;
        const navLinks = document.querySelectorAll('.ap-bottom-navigation-static .nav-link');
        
        navLinks.forEach(link => {
            const href = link.getAttribute('href');
            if (href && currentPath.includes(href.replace(relative_path, ''))) {
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