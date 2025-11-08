<!-- AP Theme: Bottom Navigation -->
<nav class="ap-bottom-navigation">
	<ul>
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/">
				<i class="fa fa-fw fa-home"></i>
				<span>[[global:home]]</span>
			</a>
		</li>

		{{{ if config.loggedIn }}}
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/unread">
				<i class="fa fa-fw fa-inbox"></i>
				<span>[[global:unread]]</span>
			</a>
		</li>
		{{{ end }}}

		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/recent">
				<i class="fa fa-fw fa-clock"></i>
				<span>[[global:recent]]</span>
			</a>
		</li>

		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/categories">
				<i class="fa fa-fw fa-list"></i>
				<span>[[global:header.categories]]</span>
			</a>
		</li>

		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/popular">
				<i class="fa fa-fw fa-fire"></i>
				<span>[[global:popular]]</span>
			</a>
		</li>

		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/users">
				<i class="fa fa-fw fa-users"></i>
				<span>[[global:users]]</span>
			</a>
		</li>

		{{{ if config.loggedIn }}}
		<li class="nav-item">
			<a class="nav-link" href="{relative_path}/groups">
				<i class="fa fa-fw fa-group"></i>
				<span>[[global:groups]]</span>
			</a>
		</li>
		{{{ end }}}
	</ul>
</nav>