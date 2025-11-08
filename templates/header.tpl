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
		document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
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

	<!-- IMPORT partials/menu.tpl -->

	<div class="layout-container d-flex flex-column">
		<div widget-area="header" class="widget-area">
			{{{each widgets.header}}}
			{{widgets.header.html}}
			{{{end}}}
		</div>

		<div widget-area="brand-header" class="brand-header widget-area">
			{{{each widgets.brand-header}}}
			{{widgets.brand-header.html}}
			{{{end}}}
		</div>

		<main id="content" class="page-content">