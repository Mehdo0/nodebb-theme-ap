<footer>
    <!-- Original footer content -->
</footer>

<!-- Bottom Nav Script -->
<script>
document.addEventListener('DOMContentLoaded', function() {
    const bottomNav = document.getElementById('ap-bottom-nav');
    if (bottomNav) {
        console.log('AP Bottom Nav: Loaded successfully');
        // Add active state based on current route
        const currentPath = window.location.pathname;
        document.querySelectorAll('.ap-nav-item').forEach(item => {
            if (item.getAttribute('href') === currentPath) {
                item.classList.add('active');
            }
        });
    } else {
        console.error('AP Bottom Nav: Not found in DOM');
    }
});
</script>