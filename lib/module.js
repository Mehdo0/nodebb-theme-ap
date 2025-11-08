'use strict';

$(document).ready(function() {
    console.log('AP Theme: Initializing bottom navigation');
    initializeBottomNav();
});

$(window).on('action:ajaxify.end', function(ev, data) {
    console.log('AP Theme: Page changed to', data.url);
    setTimeout(initializeBottomNav, 100);
});

function initializeBottomNav() {
    console.log('AP Theme: Initializing bottom navigation');
    
    // Ensure bottom nav is visible
    const bottomNav = document.getElementById('ap-bottom-nav');
    if (bottomNav) {
        bottomNav.style.display = 'block';
        bottomNav.style.visibility = 'visible';
        bottomNav.style.opacity = '1';
        
        // Update active states
        const currentPath = window.location.pathname;
        document.querySelectorAll('.ap-nav-item').forEach(item => {
            const itemHref = item.getAttribute('href');
            if (itemHref === currentPath || 
               (itemHref !== '/' && currentPath.startsWith(itemHref))) {
                item.classList.add('active');
            } else {
                item.classList.remove('active');
            }
        });
        
        console.log('AP Theme: Bottom nav initialized successfully');
    } else {
        console.error('AP Theme: Bottom nav element not found');
        createFallbackNavigation();
    }
}

function createFallbackNavigation() {
    console.log('AP Theme: Creating fallback navigation');
    
    const fallbackNav = document.createElement('div');
    fallbackNav.id = 'ap-bottom-nav-fallback';
    fallbackNav.innerHTML = `
        <div style="position:fixed;bottom:0;left:0;right:0;background:red;color:white;padding:10px;z-index:9999;text-align:center;">
            AP BOTTOM NAV FALLBACK - TEMPLATE NOT LOADING
        </div>
    `;
    document.body.appendChild(fallbackNav);
}

// Fallback initialization
setTimeout(() => {
    if (!document.getElementById('ap-bottom-nav')) {
        console.warn('AP Theme: Bottom nav not found after timeout, using fallback');
        createFallbackNavigation();
    }
}, 2000);