<!-- AP Theme: Navigation Debug -->
<div style="position: fixed; top: 10px; right: 10px; background: red; color: white; padding: 10px; z-index: 9999;">
    AP Theme Loaded - Navigation Debug
    <div id="ap-nav-status">Looking for navigation...</div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    setTimeout(function() {
        const navSelectors = [
            '[component="navigation"]',
            '[component="sidebar/left"]', 
            '.sidebar-left',
            '.nav-pills'
        ];
        
        let foundNav = null;
        navSelectors.forEach(selector => {
            const el = document.querySelector(selector);
            if (el) foundNav = el;
        });
        
        const statusEl = document.getElementById('ap-nav-status');
        if (foundNav) {
            statusEl.innerHTML = 'Navigation found!';
            statusEl.style.background = 'green';
        } else {
            statusEl.innerHTML = 'No navigation found';
            statusEl.style.background = 'red';
        }
    }, 2000);
});
</script>