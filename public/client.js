'use strict';

$(document).ready(function () {
    console.log('AP Theme: Creating bottom navigation');
    
    function createBottomNavigation() {
        // Remove any existing bottom nav we created
        const existingNav = document.querySelector('.ap-bottom-navigation-js');
        if (existingNav) {
            existingNav.remove();
        }
        
        // Try to get navigation from NodeBB's data
        let navigationHTML = '';
        
        // Method 1: Check if navigation data is available in window
        if (window.navigation && Array.isArray(window.navigation)) {
            console.log('Using window.navigation data');
            navigationHTML = window.navigation.map(item => `
                <li class="nav-item${item.active ? ' active' : ''}">
                    <a class="nav-link" href="${config.relative_path}${item.route}">
                        <i class="fa fa-fw ${item.iconClass || 'fa-circle'}"></i>
                        <span class="nav-text">${item.title}</span>
                    </a>
                </li>
            `).join('');
        } 
        // Method 2: Try to find existing navigation in DOM and clone it
        else {
            console.log('Using default navigation');
            // Default NodeBB navigation items
            navigationHTML = `
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
                ` : ''}
            `;
        }
        
        // Create the bottom navigation
        const bottomNav = document.createElement('nav');
        bottomNav.className = 'ap-bottom-navigation ap-bottom-navigation-js';
        
        bottomNav.innerHTML = `
            <ul class="nav nav-pills">
                ${navigationHTML}
            </ul>
        `;
        
        // Add to page
        document.body.appendChild(bottomNav);
        console.log('Bottom navigation created');
        
        // Update active states
        updateActiveStates();
    }
    
    function updateActiveStates() {
        const currentPath = window.location.pathname;
        const navLinks = document.querySelectorAll('.ap-bottom-navigation-js .nav-link');
        
        navLinks.forEach(link => {
            const href = link.getAttribute('href');
            // Remove active class from all
            link.classList.remove('active');
            link.parentElement.classList.remove('active');
            
            // Add active class to current
            if (href && (currentPath === href || currentPath.startsWith(href + '/'))) {
                link.classList.add('active');
                link.parentElement.classList.add('active');
            }
        });
    }
    
    // Create navigation immediately
    createBottomNavigation();
    
    // Recreate on page changes
    $(window).on('action:ajaxify.end', function() {
        setTimeout(createBottomNavigation, 100);
    });
});