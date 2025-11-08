<!-- =========================================
     Audemars Piguet Theme — Bottom Navigation
     ========================================= -->

<nav component="navigation" class="sidebar sidebar-left">
  <ul class="nav nav-pills nav-stacked">
    <!-- Home -->
    <li class="nav-item">
      <a class="nav-link" href="/" title="Home">
        <i class="fa fa-home"></i>
        <span class="visible-open">Home</span>
      </a>
    </li>

    <!-- Categories -->
    <li class="nav-item">
      <a class="nav-link" href="/categories" title="Categories">
        <i class="fa fa-list"></i>
        <span class="visible-open">Categories</span>
      </a>
    </li>

    <!-- Recent posts -->
    <li class="nav-item">
      <a class="nav-link" href="/recent" title="Recent">
        <i class="fa fa-clock"></i>
        <span class="visible-open">Recent</span>
      </a>
    </li>

    <!-- Users -->
    <li class="nav-item">
      <a class="nav-link" href="/users" title="Users">
        <i class="fa fa-users"></i>
        <span class="visible-open">Users</span>
      </a>
    </li>

    <!-- Notifications -->
    <li class="nav-item">
      <a class="nav-link" href="/notifications" title="Notifications">
        <i class="fa fa-bell"></i>
        <span class="visible-open">Alerts</span>
      </a>
    </li>

    <!-- Profile / Login -->
    <li class="nav-item">
      <a class="nav-link" href="/user/{{user.userslug}}" title="Profile">
        <i class="fa fa-user"></i>
        <span class="visible-open">You</span>
      </a>
    </li>
  </ul>
</nav>
