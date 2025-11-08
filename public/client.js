'use strict';

$(document).ready(function () {
    console.log('AP Theme: client.js loaded successfully');
    
    // Function to debug and find navigation
    function debugNavigation() {
        console.log('=== AP Theme: Debugging Navigation ===');
        
        // Check for various navigation elements
        const selectors = [
            '[component="navigation"]',
            '[component="sidebar/left"]',
            '.sidebar-left',
            '.nav-pills',
            '.nav-stacked',
            '[component="mobile/navbar"]',
            '.navbar-nav'
        ];
        
        selectors.forEach(selector => {
            const elements = document.querySelectorAll(selector);
            console.log(`Selector "${selector}": found ${elements.length} elements`);
            elements.forEach((el, index) => {
                console.log(`  [${index}]:`, el);
                console.log(`  [${index}] classes:`, el.className);
                console.log(`  [${index}] HTML:`, el.outerHTML.substring(0, 200) + '...');
            });
        });
        
        // Check body classes
        console.log('Body classes:', document.body.className);
        
        // Check if our CSS is applied
        const testElement = document.createElement('div');
        testElement.className = 'ap-bottom-navigation';
        testElement.style.cssText = 'position: fixed; bottom: 0; left: 0; width: 100px; height: 100px; background: red; z-index: 9999;';
        testElement.innerHTML = 'AP THEME TEST';
        document.body.appendChild(testElement);
        console.log('Test element added - if you see a red box, CSS is working');
    }
    
    // Initial debug
    setTimeout(debugNavigation, 1000);
    
    // Also debug on navigation
    $(window).on('action:ajaxify.end', function() {
        setTimeout(debugNavigation, 500);
    });
});