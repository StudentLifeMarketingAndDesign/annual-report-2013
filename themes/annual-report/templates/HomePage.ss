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
            <!-- $Content -->
        </div>
    </section>
</div>


	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
    <!-- Isotope -->
    <script src="{$ThemeDir}/js/plugins/jquery.isotope.min.js"></script>
    <script src="{$ThemeDir}/js/main.js"></script>

    <!-- Big Video -->
    <script src="{$ThemeDir}/js/plugins/jquery-ui-1.8.22.custom.min.js"></script>
    <script src="{$ThemeDir}/js/plugins/jquery.imagesloaded.min.js"></script>
    <script src="{$ThemeDir}/js/plugins/video.js"></script>
    <script src="{$ThemeDir}/js/plugins/bigvideo.js"></script>

    <script>
        $(function() {
            var image = new Array ();
            image[0] = "{$ThemeDir}/video/imu_hd.mp4";
            image[1] = "{$ThemeDir}/video/burge.mp4";
            image[2] = "{$ThemeDir}/video/pentacrest.mp4";
            image[3] = "{$ThemeDir}/video/rec_hd.mp4";
            var size = image.length
            var x = Math.floor(size*Math.random())

            var BV = new $.BigVideo();
            BV.init();
            if (Modernizr.touch) {
                BV.show('{$ThemeDir}/images/fallback.jpg');
            } else {
                BV.show(image[x],{ambient:true});
            }
        });
    </script>

    <script src="{$BaseHref}division-bar/js/division-bar.js"></script>

</body>
</html>

