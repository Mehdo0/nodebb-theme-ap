'use strict';

// Wait for NodeBB to fully load
$(window).on('action:app.load', function() {
    console.log('AP Theme: Initializing bottom navigation');
    
    // Simple function to ensure navigation is visible
    function ensureNavigationVisible() {
        const nav = document.querySelector('.ap-bottom-navigation');
        if (nav) {
            nav.style.display = 'flex';
            console.log('Bottom navigation found and made visible');
        } else {
            console.log('Bottom navigation not found in DOM');
            // If nav doesn't exist after 3 seconds, create it manually
            setTimeout(createFallbackNavigation, 3000);
        }
    }
    
    // Fallback if template doesn't load
    function createFallbackNavigation() {
        if (document.querySelector('.ap-bottom-navigation')) return;
        
        const fallbackNav = document.createElement('nav');
        fallbackNav.className = 'ap-bottom-navigation';
        fallbackNav.innerHTML = `
            <ul>
                <li class="nav-item">
                    <a class="nav-link" href="/">
                        <i class="fa fa-fw fa-home"></i>
                        <span>Home</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/recent">
                        <i class="fa fa-fw fa-clock"></i>
                        <span>Recent</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/categories">
                        <i class="fa fa-fw fa-list"></i>
                        <span>Categories</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/users">
                        <i class="fa fa-fw fa-users"></i>
                        <span>Users</span>
                    </a>
                </li>
            </ul>
        `;
        document.body.appendChild(fallbackNav);
        console.log('Fallback navigation created');
    }
    
    // Initial check
    ensureNavigationVisible();
    
    // Check again after a delay
    setTimeout(ensureNavigationVisible, 1000);
    setTimeout(ensureNavigationVisible, 3000);
    
    // Handle page navigation
    $(window).on('action:ajaxify.end', function() {
        setTimeout(ensureNavigationVisible, 500);
    });
});