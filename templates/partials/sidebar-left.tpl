<!-- TEST: Checking which navigation structure exists -->
<div style="display: none;">
    <!-- Test for different navigation components -->
    <div id="test-nav-component" component="navigation">Navigation Component Test</div>
    <div id="test-sidebar-left" component="sidebar/left">Sidebar Left Component Test</div>
</div>

<!-- AP Theme: Bottom Navigation -->
<!-- This targets the actual NodeBB navigation structure -->
<div component="sidebar/left" class="ap-bottom-navigation">
    {{{ if !isMobile }}}
    <ul class="nav nav-pills">
        {{{each navigation}}}
        <li class="nav-item{{{ if navigation.active }}} active{{{ end }}}">
            <a class="nav-link" href="{navigation.route}">
                <i class="fa fa-fw {navigation.iconClass}"></i>
                <span class="nav-text">{navigation.title}</span>
            </a>
        </li>
        {{{ end }}}
    </ul>
    {{{ end }}}
</div>