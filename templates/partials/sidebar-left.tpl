<!-- AP Theme: Bottom Navigation (Using NodeBB Navigation Data) -->
<nav component="sidebar/left" class="ap-bottom-navigation">
    <ul id="main-nav" class="nav nav-pills" component="navigation">
        {{{each navigation}}}
        <li class="nav-item{{{ if navigation.active }}} active{{{ end }}}" data-id="{navigation.id}">
            <a class="nav-link" href="{navigation.route}" title="{navigation.title}"{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
                <i class="fa fa-fw {navigation.iconClass}"></i>
                <span class="nav-text">{navigation.title}</span>
                {{{ if navigation.content }}}
                <span class="badge bg-danger">{navigation.content}</span>
                {{{ end }}}
            </a>
        </li>
        {{{ end }}}
    </ul>
</nav>