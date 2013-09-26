<!DOCTYPE html>
<!--[if IE 8]>         <html lang="$ContentLocale" id="doc" class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="$ContentLocale" id="doc"> <!--<![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- CSS -->
	<link rel="stylesheet" href="{$ThemeDir}/css/master.css" />
    <link rel="stylesheet" href="{$BaseHref}division-bar/css/_division-bar.css" />

	<!-- JS -->
    <script type="text/javascript">
        var doc = document.getElementById('doc');
        doc.removeAttribute('class', 'no-js');
        doc.setAttribute('class', 'js');
    </script>
	<script type="text/javascript" src="//use.typekit.net/ocu2ncd.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
    <script src="{$ThemeDir}/js/plugins/modernizr-2.5.3.min.js"></script>
	<!--[if lt IE 9]>
    	<script src="{$ThemeDir}/js/vendor/respond.min.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
</head>

<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>">

<% include DivisionBar %>
<div id="content-wrapper" class="container clearfix" style="height: 100%;">
    <nav class="off-canvas-navigation">
        <ul>
            <li class="menu-item"><a class="menu-button" href="#menu">Menu</a></li>
        </ul>
    </nav>
    <div id="menu" role="navigation">
        <% include Menu %>
        <% include PreviewList %>                                         
    </div>
    <section id="main" role="main" style="height: 100%;">
        <div class="home-content" style="height: 100%;">
            &nbsp;
            <img src="{$ThemeDir}/images/dosl-lg.png" alt="" class="dosl-img" width="400">
        </div>
    </section>
</div>
<div id='background-video' class='visible-md visible-lg'>
    <video  autoplay loop preload class='fill' width='1080' height='720'>
        <source src="{$ThemeDir}/video/imu_hd.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />
        <source src="video/ENVOY_TLI_1_2.webm" type='video/webm; codecs="vp8, vorbis"' />
        <source src="video/ENVOY_TLI_1_2.ogv" type='video/ogg; codecs="theora, vorbis"' />
    </video>
</div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <!-- Isotope -->
    <script src="{$ThemeDir}/js/plugins/jquery.isotope.min.js"></script>
    <script src="{$ThemeDir}/js/main.js"></script>
    <script src="{$ThemeDir}/js/plugins/fill_resize.js"></script>



    <script src="{$BaseHref}division-bar/js/division-bar.js"></script>

</body>
</html>

