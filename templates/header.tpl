<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}}>
<head>
	<title>{browserTitle}</title>
	{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client{{{if bootswatchSkin}}}-{bootswatchSkin}{{{end}}}{{{ if (languageDirection=="rtl") }}}-rtl{{{ end }}}.css?{config.cache-buster}" />
	{{{each linkTags}}}{function.buildLinkTag}{{{end}}}

	<script>
		var config = JSON.parse('{{configJSON}}');
		var app = {
			user: JSON.parse('{{userJSON}}')
		};
		document.documentElement.style.setProperty('--panel-offset', `0px`);
	</script>

	{{{if useCustomHTML}}}
		{{customHTML}}
	{{{end}}}

	{{{if useCustomCSS}}}
		<style>{{customCSS}}</style>
	{{{end}}}
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}}">

	<a class="visually-hidden-focusable position-absolute top-0 start-0 p-3 m-3 bg-body" style="z-index: 1021;" href="#content">
		[[global:skip-to-content]]
	</a>

	<div class="container">
		<div widget-area="header">
			{{{each widgets.header}}}
			{{widgets.content}}
			{{{end}}}
		</div>

		<!-- IMPORT partials/menu.tpl -->

		<div class="row">
			<div class="col-12">
				<div class="brand-container" widget-area="brand-header">
					{{{each widgets.brand-header}}}
					{widgets.content}
					{{{end}}}
				</div>
			</div>
		</div>

		<main id="content" class="page-content">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</main>
	</div>

	<!-- IMPORT partials/sidebar-left.tpl -->

</body>
</html>
