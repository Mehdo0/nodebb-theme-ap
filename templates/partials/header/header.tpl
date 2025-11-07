<!-- AP Forum Header -->
<header id="ap-header" class="ap-header" component="header">
    <!-- Brand Header -->
    <div class="ap-brand-header">
        <div class="ap-brand-inner">
            <a href="/" class="ap-logo">
                <img src="{baseDir}/images/AP_logo.png" alt="Audemars Piguet Logo" />
                <span class="sr-only">Audemars Piguet Forum</span>
            </a>
            <span class="ap-brand-text">Club AP Forum</span>
        </div>
    </div>

    <!-- Main Navigation Bar -->
    <nav class="ap-navbar" component="navbar">
        <div class="container">
            <div class="ap-navbar-content">
                <!-- Search Bar -->
                <div class="ap-search-container">
                    <form component="search/form" id="search-form" class="ap-search-form" role="search" method="GET">
                        <input component="search/input" class="ap-search-input" type="search" id="search-input" name="term" placeholder="Search Club AP..." aria-label="Search Club AP" />
                        <button type="submit" class="ap-search-submit">
                            <i component="search/icon" class="fa fa-search"></i>
                            <span class="sr-only">Search</span>
                        </button>
                    </form>
                </div>

                <!-- User Navigation -->
                <ul class="ap-nav-actions">
                    <!-- Notifications -->
                    <li class="ap-nav-item" component="notifications">
                        <a href="#" class="ap-nav-link" component="notifications/icon" data-bs-toggle="dropdown" id="notificationDropdown" role="button" aria-expanded="false">
                            <i class="fa fa-bell"></i>
                            <span component="notifications/count" class="ap-notification-badge" data-value="0">0</span>
                        </a>
                        <!-- Notifications Dropdown -->
                        <ul class="dropdown-menu dropdown-menu-end" component="notifications/list" aria-labelledby="notificationDropdown">
                            <li><a class="dropdown-item" href="#" component="notifications/mark_all">Mark all as read</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="{relative_path}/notifications">See all notifications</a></li>
                        </ul>
                    </li>

                    <!-- IF !loggedIn -->
                    <!-- Login/Register -->
                    <li class="ap-nav-item">
                        <a href="{relative_path}/login" class="ap-nav-link">
                            <i class="fa fa-sign-in"></i> <span>Login</span>
                        </a>
                    </li>
                    <!-- ELSE -->
                    <!-- User Menu -->
                    <li class="ap-nav-item" component="header/usercontrol">
                        <a href="#" class="ap-nav-link" component="header/avatar" data-bs-toggle="dropdown" id="user-dropdown" role="button" aria-expanded="false">
                            <!-- IF user.picture -->
                            <img component="header/userpicture" src="{user.picture}" alt="{user.username}" />
                            <!-- ELSE -->
                            <span component="header/usericon" class="ap-user-icon">{user.username-first-char}</span>
                            <!-- ENDIF user.picture -->
                            <span component="header/username" class="d-none d-md-inline">{user.username}</span>
                        </a>
                        <!-- User Dropdown Menu -->
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="user-dropdown">
                            <li>
                                <a class="dropdown-item" href="{relative_path}/user/{user.userslug}">
                                    <i class="fa fa-user"></i> Profile
                                </a>
                            </li>
                            <!-- IF showModMenu -->
                            <li>
                                <a class="dropdown-item" href="{relative_path}/mod.html">
                                    <i class="fa fa-shield"></i> Moderator Tools
                                </a>
                            </li>
                            <!-- ENDIF showModMenu -->
                            <!-- IF isAdmin -->
                            <li>
                                <a class="dropdown-item" href="{relative_path}/admin">
                                    <i class="fa fa-cog"></i> Admin Panel
                                </a>
                            </li>
                            <!-- ENDIF isAdmin -->
                            <li><hr class="dropdown-divider"></li>
                            <li>
                                <a class="dropdown-item" href="#" component="header/logout">
                                    <i class="fa fa-sign-out"></i> Logout
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- ENDIF !loggedIn -->
                </ul>
            </div>
        </div>
    </nav>

    <!-- Sub Navigation -->
    <nav class="ap-subnav">
        <div class="container">
            <ul class="ap-subnav-list">
                <li class="ap-subnav-item">
                    <a href="{relative_path}/" class="ap-subnav-link <!-- IF activeLink == 'home' -->active<!-- ENDIF activeLink -->">
                        Home
                    </a>
                </li>
                <li class="ap-subnav-item">
                    <a href="{relative_path}/categories" class="ap-subnav-link <!-- IF activeLink == 'categories' -->active<!-- ENDIF activeLink -->">
                        Categories
                    </a>
                </li>
                <li class="ap-subnav-item">
                    <a href="{relative_path}/unread" class="ap-subnav-link <!-- IF activeLink == 'unread' -->active<!-- ENDIF activeLink -->">
                        Unread
                    </a>
                </li>
                <li class="ap-subnav-item">
                    <a href="{relative_path}/recent" class="ap-subnav-link <!-- IF activeLink == 'recent' -->active<!-- ENDIF activeLink -->">
                        Recent
                    </a>
                </li>
                <li class="ap-subnav-item">
                    <a href="{relative_path}/tags" class="ap-subnav-link <!-- IF activeLink == 'tags' -->active<!-- ENDIF activeLink -->">
                        Tags
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</header>