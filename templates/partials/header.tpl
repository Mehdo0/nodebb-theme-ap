<!-- AP Header Partial -->
<header class="ap-header" role="banner">
  <div class="container d-flex align-items-center ap-header-inner">
    <div class="ap-brand d-flex align-items-center">
      <a class="ap-logo" href="/">
        {{#if config.logo}}
          <img src="{{config.logo}}" alt="{{config.title}}" />
        {{else}}
          <span class="ap-site-title">{{config.title}}</span>
        {{/if}}
      </a>
    </div>

    <form class="ap-search d-flex" role="search" action="/search" method="get">
      <input name="q" type="search" class="form-control ap-search-input" placeholder="Search topics, users..." aria-label="Search" />
      <button type="submit" class="btn btn-ghost ap-search-btn" aria-label="Search"><i class="fa fa-search" aria-hidden="true"></i></button>
    </form>

    <div class="ap-actions d-flex align-items-center">
      <a class="ap-action ap-notifications" href="/notifications" title="Notifications" aria-label="Notifications">
        <i class="fa fa-bell"></i>
        <span class="ap-badge" aria-hidden="true"></span>
      </a>

      {{#if user}}
      <a class="ap-user" href="/user/{{user.userslug}}">
        <span class="ap-avatar-initials">{{user.username.substr 0 1}}</span>
        <span class="ap-username d-none d-md-inline">{{user.username}}</span>
      </a>
      {{else}}
      <a class="btn btn-ghost" href="/login">Log in</a>
      {{/if}}
    </div>
  </div>
</header>
