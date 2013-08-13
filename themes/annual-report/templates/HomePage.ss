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

<% include SideBar %>
<div class="home-content">
    <img src="{$ThemeDir}/images/dosl-lg.png" alt="" class="dosl" width="500">
    <!-- $Content -->
</div>


	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <!-- Isotope
    <script src="{$ThemeDir}/js/vendor/jquery.isotope.min.js"></script>
    <script>
        $(function() {
            var $container = $('#container');

            $container.isotope({
                // options
                itemSelector : '.item',
                layoutMode : 'straightDown'
            });

            // filter items when filter link is clicked
            $('#filters a').click(function(){
                var selector = $(this).attr('data-filter');
                $container.isotope({ filter: selector });
                $('#filters a').removeClass('active');
                $(this).addClass('active');
                return false;
            });
        });  
    </script>
 	-->
    <!-- Big Video -->
    <script src="{$ThemeDir}/js/vendor/jquery-ui-1.8.22.custom.min.js"></script>
    <script src="{$ThemeDir}/js/vendor/jquery.imagesloaded.min.js"></script>
    <script src="{$ThemeDir}/js/vendor/video.js"></script>
    <script src="{$ThemeDir}/js/vendor/bigvideo.js"></script>
    <script>
        $(function() {
            var BV = new $.BigVideo({useFlashForFirefox:false});
            BV.init();
            BV.show('{$ThemeDir}/video/xmen.mp4');
        });
    </script>

</body>
</html>

