<div class="brand-container">
	<div class="col-12 d-flex border-bottom pb-3 justify-content-center">
		<div component="brand/wrapper" class="d-flex align-items-center gap-2 p-2 rounded-1">
			{{{ if brand:logo }}}
			<a component="brand/anchor" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
				<img component="brand/logo" alt="{{{ if brand:logo:alt }}}{brand:logo:alt}{{{ else }}}[[global:header.brand-logo]]{{{ end }}}" class="{brand:logo:display} ap-logo-img" src="{brand:logo}?{config.cache-buster}" />
			</a>
			{{{ end }}}
			
			{{{ if config.showSiteTitle }}}
			<a component="siteTitle" class="text-truncate align-self-stretch align-items-center d-flex" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
				<h1 class="fs-6 fw-bold text-body mb-0">{config.siteTitle}</h1>
			</a>
			{{{ end }}}
			
		</div>
	</div>
</div>