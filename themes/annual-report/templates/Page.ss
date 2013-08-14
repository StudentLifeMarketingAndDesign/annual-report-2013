<!DOCTYPE html>
<!--[if IE 8]>         <html lang="$ContentLocale" class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="$ContentLocale"> <!--<![endif]-->
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

	<!-- JS -->
	<script type="text/javascript" src="//use.typekit.net/ocu2ncd.js"></script>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	<!--[if lt IE 9]>
    	<script src="$ThemeDir}/js/vendor/respond.min.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
</head>

<body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>">

<div class="menu">
    <a href="index.php"><img src="{$ThemeDir}/images/logo.gif"></a>
    <ul id="filters" class="main-nav">
        <li><a href="#" data-filter="*" class="active">All</a></li>
        <li><a href="#" data-filter=".Excel">Excel</a></li>
        <li><a href="#" data-filter=".Stretch">Stretch</a></li>
        <li><a href="#" data-filter=".Choose">Choose</a></li>
        <li><a href="#" data-filter=".Engage">Engage</a></li>
        <li><a href="#" data-filter=".Serve">Serve</a></li>
    </ul>
    <div class="pos-btm">
        <a href="#">
            <img src="{$ThemeDir}/images/menu_dosl.png" alt="Division of Student Life" class="menu-dosl">
        </a>
    </div>
</div>



$Layout


	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <!-- Isotope -->
    <script src="{$ThemeDir}/js/vendor/jquery.isotope.min.js"></script>
    <script src="{$ThemeDir}/js/main.js"></script>

    <!-- Ajaxify -->
    <!-- jQuery ScrollTo Plugin -->
    <script src="//balupton.github.io/jquery-scrollto/lib/jquery-scrollto.js"></script>

    <!-- History.js -->
    <script src="//browserstate.github.io/history.js/scripts/bundled/html4+html5/jquery.history.js"></script>

    <!-- Ajaxify -->
    <script src="{$ThemeDir}/js/vendor/ajaxify-html5.js"></script>

</body>
</html>
