<!-- AP Theme: Navigation using NodeBB's data -->
<nav component="navigation" class="nav-pills nav-stacked ap-navigation">
	<ul class="ap-nav-list">
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