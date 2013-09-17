<!DOCTYPE html>
<!--[if IE 8]>         <html lang="$ContentLocale" id="doc" class="lt-ie9 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="$ContentLocale" id="doc" class="no-js"> <!--<![endif]-->
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
	<!--[if lt IE 9]>
    	<script src="$ThemeDir}/js/vendor/respond.min.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
</head>

<body class="$ClassName">

<% include DivisionBar %>
<div id="content-wrapper" class="container clearfix">
    <nav class="off-canvas-navigation">
        <ul>
            <li class="menu-item"><a class="menu-button" href="#menu">Menu</a></li>
        </ul>
    </nav>
    <div id="menu" role="navigation">
    	<% include Menu %>
        <% include PreviewList %>                                         
    </div>
    <section role="main">
		$Layout
	</section>
</div>


	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <!-- Isotope -->
    <script src="{$ThemeDir}/js/vendor/jquery.isotope.min.js"></script>

    <!-- Ajaxify -->
    <!-- jQuery ScrollTo Plugin -->
    <script src="//balupton.github.io/jquery-scrollto/lib/jquery-scrollto.js"></script>

   <!--  History.js -->
    <script src="//browserstate.github.io/history.js/scripts/bundled/html4+html5/jquery.history.js"></script>

    <!-- Ajaxify -->
    <script src="{$ThemeDir}/js/vendor/ajaxify-html5.js"></script>

    <!-- FitVids -->
    <script src="{$ThemeDir}/js/vendor/jquery.fitvids.min.js"></script>
    <script>$(document).ready(function(){$(".article-content").fitVids();});</script>

    <script src="{$BaseHref}division-bar/js/division-bar.js"></script>

    <script src="https://rawgithub.com/desandro/bac18f05eab26ec2ac21/raw/1e017b9843a6ae66b56aa18f2e0bc0a84cf002d7/jquery.nicescroll.js"></script>

    <script src="{$ThemeDir}/js/main-ck.js"></script>

</body>
</html>
