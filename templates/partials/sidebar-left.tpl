<!-- AP Theme: Bottom Navigation (NodeBB Navigation Menu Only) -->
<nav component="sidebar/left" class="ap-bottom-navigation">
	<ul id="main-nav" class="nav nav-pills flex-column" component="sidebar/drafts">
		<!-- Home -->
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/">
				<i class="fa fa-fw fa-home"></i>
				<span class="nav-text">[[global:home]]</span>
			</a>
		</li>

		<!-- Unread -->
		{{{ if config.loggedIn }}}
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/unread" data-bs-toggle="tooltip" title="[[global:unread]]">
				<i class="fa fa-fw fa-inbox"></i>
				<span class="nav-text">[[global:unread]]</span>
			</a>
		</li>
		{{{ end }}}

		<!-- Recent -->
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/recent" data-bs-toggle="tooltip" title="[[global:recent]]">
				<i class="fa fa-fw fa-clock"></i>
				<span class="nav-text">[[global:recent]]</span>
			</a>
		</li>

		<!-- Categories -->
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/categories" data-bs-toggle="tooltip" title="[[global:header.categories]]">
				<i class="fa fa-fw fa-list"></i>
				<span class="nav-text">[[global:header.categories]]</span>
			</a>
		</li>

		<!-- Popular -->
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/popular" data-bs-toggle="tooltip" title="[[global:popular]]">
				<i class="fa fa-fw fa-fire"></i>
				<span class="nav-text">[[global:popular]]</span>
			</a>
		</li>

		<!-- Tags -->
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/tags" data-bs-toggle="tooltip" title="[[global:tags]]">
				<i class="fa fa-fw fa-tags"></i>
				<span class="nav-text">[[global:tags]]</span>
			</a>
		</li>

		<!-- Users -->
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/users" data-bs-toggle="tooltip" title="[[global:users]]">
				<i class="fa fa-fw fa-users"></i>
				<span class="nav-text">[[global:users]]</span>
			</a>
		</li>

		<!-- Groups (if logged in) -->
		{{{ if config.loggedIn }}}
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/groups" data-bs-toggle="tooltip" title="[[global:groups]]">
				<i class="fa fa-fw fa-group"></i>
				<span class="nav-text">[[global:groups]]</span>
			</a>
		</li>
		{{{ end }}}
	</ul>
</nav>