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
	</script>

	{{{if useCustomHTML}}}
	{{customHTML}}
	{{{end}}}
	{{{if useCustomCSS}}}
	<style>{{customCSS}}</style>
	{{{end}}}
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}} ap-theme">
	<a class="visually-hidden-focusable position-absolute top-0 start-0 p-3 m-3 bg-body" style="z-index: 1021;" href="#content">[[global:skip-to-content]]</a>

	<!-- AP Custom Header -->
	<header class="ap-header">
		<div class="ap-header-container">
			<div class="ap-logo-wrapper">
				<!-- IMPORT partials/header/brand.tpl -->
			</div>
		</div>
		<!-- IMPORT templates/test-navigation.tpl -->
		<!-- IMPORT templates/test-build.tpl -->
		<!-- DEBUG: Testing if templates work -->
		<div style="position: fixed; top: 10px; right: 10px; background: red; color: white; padding: 10px; z-index: 9999;">
			HEADER TEMPLATE LOADED
		</div>
	</header>

	<!-- Bottom Navigation -->
	<!-- IMPORT partials/sidebar-left.tpl -->

	<!-- IMPORT partials/footer-js.tpl -->

	<!-- Main Content -->
	<main id="content" class="ap-main-content">
		<div class="ap-content-wrapper">
			<!-- IMPORT partials/noscript/warning.tpl -->
			<!-- IMPORT partials/noscript/message.tpl -->
			
			<div widget-area="header" class="widget-area">
				{{{each widgets.header}}}
				{{widgets.header.html}}
				{{{end}}}
			</div>