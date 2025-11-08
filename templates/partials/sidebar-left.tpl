<!-- =========================================
     Audemars Piguet Theme — Bottom Navigation (Dynamic)
     ========================================= -->

<nav component="navigation" class="sidebar sidebar-left">
  <ul class="nav nav-pills nav-stacked">
    <!-- BEGIN navigation -->
    <li class="nav-item {navigation.class}">
      <a class="nav-link" href="{navigation.route}" title="{navigation.text}">
        <i class="fa {navigation.icon}"></i>
        <span class="visible-open">{navigation.text}</span>
      </a>
    </li>
    <!-- END navigation -->

    <!-- Optional: extra items -->
    {{{ if !config.loggedIn }}}
    <li class="nav-item">
      <a class="nav-link" href="{relative_path}/login" title="Login">
        <i class="fa fa-sign-in-alt"></i>
        <span class="visible-open">Login</span>
      </a>
    </li>
    {{{ else }}}
    <li class="nav-item">
      <a class="nav-link" href="{relative_path}/user/{user.userslug}" title="Profile">
        <i class="fa fa-user"></i>
        <span class="visible-open">{user.username}</span>
      </a>
    </li>
    {{{ end }}}
  </ul>
</nav>
