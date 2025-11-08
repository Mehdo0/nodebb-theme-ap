<!-- AP Theme: Bottom Navigation -->
<nav component="navigation">
  <ul>
    {{{each navigation}}}
    <li class="nav-item{{{ if navigation.active }}} active{{{ end }}}" data-id="{navigation.id}">
      <a class="nav-link" href="{navigation.route}" title="{navigation.title}"{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
        <i class="fa fa-fw {navigation.iconClass}"></i>
        <span class="nav-text">{navigation.title}</span>
      </a>
    </li>
    {{{ end }}}
  </ul>
</nav>