'use strict';

const $ = require('jquery');

$(document).ready(function() {
    console.log('AP Theme: Initializing modules');
    initializeBottomNavigation();
});

// Handle page changes
$(window).on('action:ajaxify.end', function(ev, data) {
    console.log('AP Theme: Page changed to', data.url);
    setTimeout(initializeBottomNavigation, 100);
});

// Handle navigation clicks
$(document).on('click', '.ap-nav-item', function(e) {
    e.preventDefault();
    const href = $(this).attr('href');
    console.log('AP Theme: Navigation click', href);
    require(['ajaxify'], function(ajaxify) {
        ajaxify.go(href);
    });
});

function initializeBottomNavigation() {
    console.log('AP Theme: Initializing bottom navigation');
    
    // Ensure bottom nav exists and is visible
    let bottomNav = $('#ap-bottom-nav');
    
    if (bottomNav.length === 0) {
        console.error('AP Theme: Bottom nav element not found, creating fallback');
        createFallbackNavigation();
        bottomNav = $('#ap-bottom-nav');
    }
    
    // Force visibility
    bottomNav.css({
        display: 'flex',
        visibility: 'visible',
        opacity: '1'
    });
    
    // Update active states
    const currentPath = window.location.pathname;
    $('.ap-nav-item').each(function() {
        const $item = $(this);
        const itemHref = $item.attr('href');
        const itemRoute = $item.data('route');
        
        if (currentPath === itemRoute || 
            (itemRoute !== '/' && currentPath.startsWith(itemRoute)) ||
            currentPath === itemHref) {
            $item.addClass('active');
        } else {
            $item.removeClass('active');
        }
    });
    
    console.log('AP Theme: Bottom navigation initialized', bottomNav.length);
}

function createFallbackNavigation() {
    console.log('AP Theme: Creating fallback navigation');
    
    const fallbackHTML = `
        <div id="ap-bottom-nav" class="ap-bottom-navigation" style="position:fixed;bottom:0;left:0;right:0;background:red;color:white;z-index:9999;display:flex;height:60px;">
            <div class="ap-nav-items" style="display:flex;justify-content:space-around;width:100%;padding:8px;">
                <a href="/" class="ap-nav-item" style="color:white;text-decoration:none;">Home</a>
                <a href="/recent" class="ap-nav-item" style="color:white;text-decoration:none;">Recent</a>
                <a href="/unread" class="ap-nav-item" style="color:white;text-decoration:none;">Unread</a>
                <a href="/popular" class="ap-nav-item" style="color:white;text-decoration:none;">Popular</a>
                <a href="/users" class="ap-nav-item" style="color:white;text-decoration:none;">Users</a>
            </div>
        </div>
    `;
    
    $('body').append(fallbackHTML);
}

// Fallback initialization
setTimeout(function() {
    if ($('#ap-bottom-nav').length === 0) {
        console.warn('AP Theme: Bottom nav still not found after timeout');
        createFallbackNavigation();
    }
}, 2000);

// Export for NodeBB
module.exports = {
    init: function() {
        console.log('AP Theme: Module initialized');
    }
};