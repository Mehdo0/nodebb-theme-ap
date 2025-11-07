		<div class="dropdown bottom-sheet">
			<button type="button" class="btn btn-link" data-bs-toggle="dropdown">
				<span class="d-inline-block d-sm-none"><i class="fa fa-fw fa-bars"></i></span>
				<span class="d-none d-sm-inline-block">[[user:profile_links]]</span>
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu dropdown-menu-end" role="menu">
				<li>
					<a class="dropdown-item {{{ if template.account === "posts" }}}active{{{ end }}}" href="{config.relative_path}/user/{userslug}/posts">
						<i class="fa fa-fw fa-book" aria-hidden="true"></i> [[user:posts]]
					</a>
				</li>
				<li>
					<a class="dropdown-item {{{ if template.account === "followers" }}}active{{{ end }}}" href="{config.relative_path}/user/{userslug}/followers">
						<i class="fa fa-fw fa-users" aria-hidden="true"></i> [[user:followers]]
					</a>
				</li>
				<li>
					<a class="dropdown-item {{{ if template.account === "following" }}}active{{{ end }}}" href="{config.relative_path}/user/{userslug}/following">
						<i class="fa fa-fw fa-user-plus" aria-hidden="true"></i> [[user:following]]
					</a>
				</li>
			</ul>
		</div>

		<div id="user-action-alert" class="alert alert-success hide"></div>

		<div class="btn-group account-fab bottom-sheet">
			<button type="button" class="persona-fab dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fa fa-ellipsis-v"></i>
			</button>
			<ul class="dropdown-menu dropdown-menu-end" role="menu">
				<!-- IF loggedIn -->
				<!-- IF !isSelf -->
				<!-- IF !banned -->
				<!-- IF !config.disableChat -->
				<li class="<!-- IF !hasPrivateChat -->hidden<!-- ENDIF !hasPrivateChat -->">
					<a class="dropdown-item" component="account/chat" href="#">[[user:chat_with, {username}]]</a>
				</li>
				<!-- ENDIF !config.disableChat -->
				<!-- ENDIF !banned -->
				<!-- ENDIF !isSelf -->
				<!-- ENDIF loggedIn -->
			</ul>
		</div>