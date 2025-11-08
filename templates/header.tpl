<!DOCTYPE html>
<html lang="{lang}" dir="{languageDirection}">
    <head>
        <title>{browserTitle}</title>
        <!-- BEGIN meta -->
        <meta{../content} />
        <!-- END meta -->
        <link rel="stylesheet" href="{relative_path}/assets/client{nbb.min}.css" />
        <script src="{relative_path}/assets/client{nbb.min}.js"></script>
        
        <!-- AP Theme Styles -->
        <style>
        /* Temporary inline CSS until Less compiles */
        #ap-bottom-nav {
            position: fixed !important;
            bottom: 0 !important;
            left: 0 !important;
            right: 0 !important;
            background: #1a1a1a !important;
            border-top: 1px solid #333 !important;
            z-index: 9999 !important;
            display: flex !important;
            height: 60px !important;
        }
        .ap-nav-items {
            display: flex !important;
            justify-content: space-around !important;
            width: 100% !important;
            padding: 8px !important;
        }
        .ap-nav-item {
            display: flex !important;
            flex-direction: column !important;
            align-items: center !important;
            color: #888 !important;
            text-decoration: none !important;
            padding: 8px 12px !important;
            border-radius: 8px !important;
            font-size: 10px !important;
        }
        .ap-nav-item.active {
            color: #fff !important;
            background: rgba(255,255,255,0.15) !important;
        }
        body {
            padding-bottom: 70px !important;
        }
        </style>
    </head>
    <body class="{bodyClass}">
        <div class="layout-container">
            <!-- Original Header Content -->
            <header id="header-menu" class="header">
                <div class="container">
                    <!-- Keep original header structure -->
                    <div id="mobile-menu"></div>
                    <ul id="main-nav" class="navbar-nav"></ul>
                    <div id="search-menu"></div>
                    <ul id="user-control-list"></ul>
                </div>
            </header>

            <main class="main-content">
                <div class="container">
                    <!-- Main content area -->
                    {{{body}}}
                </div>
            </main>
        </div>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}} ap-theme">
	<!-- AP Header -->
	<header class="ap-header">
		<div class="ap-header-container">
			<div class="ap-logo-wrapper">
				<!-- IMPORT partials/header/brand.tpl -->
			</div>
		</div>
	</header>

	<main id="content" class="ap-main-content">
		<div class="ap-content-wrapper">
			<!-- IMPORT partials/noscript/warning.tpl -->
			<!-- IMPORT partials/noscript/message.tpl -->
			
			<div widget-area="header" class="widget-area">
				{{{each widgets.header}}}
				{{widgets.header.html}}
				{{{end}}}
			</div>
