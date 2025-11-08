<!DOCTYPE html>
<html lang="{lang}" dir="{languageDirection}">
    <head>
        <title>{browserTitle}</title>
        <!-- BEGIN meta -->
        <meta{../content} />
        <!-- END meta -->
        <link rel="stylesheet" href="{relative_path}/assets/client{nbb.min}.css" />
        <script src="{relative_path}/assets/client{nbb.min}.js"></script>
        
        <!-- AP Theme Styles -->
        <style>
        /* Temporary inline CSS until Less compiles */
        #ap-bottom-nav {
            position: fixed !important;
            bottom: 0 !important;
            left: 0 !important;
            right: 0 !important;
            background: #1a1a1a !important;
            border-top: 1px solid #333 !important;
            z-index: 9999 !important;
            display: flex !important;
            height: 60px !important;
        }
        .ap-nav-items {
            display: flex !important;
            justify-content: space-around !important;
            width: 100% !important;
            padding: 8px !important;
        }
        .ap-nav-item {
            display: flex !important;
            flex-direction: column !important;
            align-items: center !important;
            color: #888 !important;
            text-decoration: none !important;
            padding: 8px 12px !important;
            border-radius: 8px !important;
            font-size: 10px !important;
        }
        .ap-nav-item.active {
            color: #fff !important;
            background: rgba(255,255,255,0.15) !important;
        }
        body {
            padding-bottom: 70px !important;
        }
        </style>
    </head>
    <body class="{bodyClass}">
        <div class="layout-container">
            <!-- Original Header Content -->
            <header id="header-menu" class="header">
                <div class="container">
                    <!-- Keep original header structure -->
                    <div id="mobile-menu"></div>
                    <ul id="main-nav" class="navbar-nav"></ul>
                    <div id="search-menu"></div>
                    <ul id="user-control-list"></ul>
                </div>
            </header>

            <main class="main-content">
                <div class="container">
                    <!-- Main content area -->
                    {{{body}}}
                </div>
            </main>
        </div>

        <!-- AP Bottom Navigation -->
        <div id="ap-bottom-nav" class="ap-bottom-navigation">
            <div class="ap-nav-items">
                <a href="{relative_path}/" class="ap-nav-item" data-route="/">
                    <i class="fa fa-home"></i>
                    <span>Home</span>
                </a>
                <a href="{relative_path}/recent" class="ap-nav-item" data-route="/recent">
                    <i class="fa fa-clock"></i>
                    <span>Recent</span>
                </a>
                <a href="{relative_path}/unread" class="ap-nav-item" data-route="/unread">
                    <i class="fa fa-inbox"></i>
                    <span>Unread</span>
                </a>
                <a href="{relative_path}/popular" class="ap-nav-item" data-route="/popular">
                    <i class="fa fa-fire"></i>
                    <span>Popular</span>
                </a>
                <a href="{relative_path}/users" class="ap-nav-item" data-route="/users">
                    <i class="fa fa-users"></i>
                    <span>Users</span>
                </a>
            </div>
        </div>

        <!-- Footer Scripts -->
        <script>
        console.log('AP Theme: Header template loaded');
        </script>
    </body>
</html>