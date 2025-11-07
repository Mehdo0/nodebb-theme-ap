<!-- AP Header Partial: simple centered header with logo + "Club" -->
<header class="ap-header" role="banner">
  <div class="container ap-header-inner d-flex justify-content-center align-items-center">
    <a class="ap-brand d-flex align-items-center" href="/">
      {{#if config.logo}}
        <img src="{{config.logo}}" alt="{{config.title}}" class="ap-logo-img" />
      {{else}}
        <span class="ap-site-title">{{config.title}}</span>
      {{/if}}
      <span class="ap-club">Club</span>
    </a>
  </div>
</header>
