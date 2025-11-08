'use strict';

$(document).ready(function () {
    console.log('AP Theme: Creating bottom navigation via JavaScript');
    
    function createBottomNavigation() {
        // Remove any existing bottom nav we created
        const existingNav = document.querySelector('.ap-bottom-navigation-js');
        if (existingNav) {
            existingNav.remove();
        }
        
        // Create the bottom navigation
        const bottomNav = document.createElement('nav');
        bottomNav.className = 'ap-bottom-navigation ap-bottom-navigation-js';
        bottomNav.setAttribute('component', 'navigation');
        
        bottomNav.innerHTML = `
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link" href="${config.relative_path}/">
                        <i class="fa fa-fw fa-home"></i>
                        <span class="nav-text">Home</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${config.relative_path}/recent">
                        <i class="fa fa-fw fa-clock"></i>
                        <span class="nav-text">Recent</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${config.relative_path}/popular">
                        <i class="fa fa-fw fa-fire"></i>
                        <span class="nav-text">Popular</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${config.relative_path}/categories">
                        <i class="fa fa-fw fa-list"></i>
                        <span class="nav-text">Categories</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${config.relative_path}/users">
                        <i class="fa fa-fw fa-users"></i>
                        <span class="nav-text">Users</span>
                    </a>
                </li>
                ${config.loggedIn ? `
                <li class="nav-item">
                    <a class="nav-link" href="${config.relative_path}/unread">
                        <i class="fa fa-fw fa-inbox"></i>
                        <span class="nav-text">Unread</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${config.relative_path}/groups">
                        <i class="fa fa-fw fa-group"></i>
                        <span class="nav-text">Groups</span>
                    </a>
                </li>
                ` : ''}
            </ul>
        `;
        
        // Add to page
        document.body.appendChild(bottomNav);
        console.log('Bottom navigation created via JavaScript');
        
        // Update active states
        updateActiveStates();
    }
    
    function updateActiveStates() {
        const currentPath = window.location.pathname;
        const navLinks = document.querySelectorAll('.ap-bottom-navigation-js .nav-link');
        
        navLinks.forEach(link => {
            const href = link.getAttribute('href');
            if (href && currentPath === href) {
                link.classList.add('active');
            } else {
                link.classList.remove('active');
            }
        });
    }
    
    // Create navigation immediately
    createBottomNavigation();
    
    // Recreate on page changes (NodeBB AJAX navigation)
    $(window).on('action:ajaxify.end', function() {
        setTimeout(createBottomNavigation, 100);
    });
    
    // Also try after a delay in case page loads slowly
    setTimeout(createBottomNavigation, 1000);
    setTimeout(createBottomNavigation, 3000);
});