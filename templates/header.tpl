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
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}} ap-theme">
	<!-- AP Header -->
	<header class="ap-header">
		<div class="ap-header-container">
			<div class="ap-logo-wrapper">
				<!-- IMPORT partials/header/brand.tpl -->
			</div>
		</div>
		<!-- IMPORT templates/test-navigation.tpl -->
		<!-- IMPORT templates/test-build.tpl -->
	</header>

	<main id="content" class="ap-main-content">
		<!-- IMPORT partials/sidebar-left.tpl -->
		<div class="ap-content-wrapper">