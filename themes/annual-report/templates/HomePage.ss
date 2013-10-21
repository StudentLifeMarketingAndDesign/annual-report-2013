<!DOCTYPE html>
<!--[if IE 8]>         <html lang="en-US" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US" class="no-js"> <!--<![endif]-->
<head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS -->
    <link rel="stylesheet" href="{$ThemeDir}/css/master.css" />
    <link rel="stylesheet" href="{$BaseHref}division-bar/css/_division-bar.css" />

    <!-- JS -->
    <!--[if lt IE 9]>
        <script src="{$ThemeDir}/js/plugins/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript" src="//use.typekit.net/ocu2ncd.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>
    <script src="{$ThemeDir}/js/plugins/modernizr-2.5.3.min.js"></script>

    <!-- Open Graph -->
    <meta property="og:type"     content="article"> 
    <meta property="og:url"      content="$AbsoluteLink">
    <meta property="og:site_name"    content="2013 Division of Student Life Annual Report">
    <meta property="og:image"    content="$Photo.AbsoluteURL">
    <meta property="og:title"    content="$Title">
    <meta property="og:description"  content="$Excerpt">

    <!-- Favicon -->
    <link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
</head>

<body class="$ClassName">

    <% include DivisionBar %>

    <div id="content-wrapper" class="clearfix">

        <section id="menu" data-spy="affix" data-offset-top="43" class="affix-top">
            <% include FilterMenu %>
            <% include PreviewList %>                                         
        </section>

	</div>

    <div id='background-video' class='visible-md visible-lg'>
        <video autoplay loop preload class='fill'>
            <source class="mp4" src="{$ThemeDir}/video/pentacrest_hd.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />
            <source class="webm" src="{$ThemeDir}/video/pentacrest_hd.webm" type='video/webm; codecs="vp8, vorbis"' />
            <source class="ogv" src="{$ThemeDir}/video/pentacrest_hd.ogv" type='video/ogg; codecs="theora, vorbis"' />
        </video>
    </div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="{$BaseHref}division-bar/js/division-bar.js"></script>
    <script src="{$ThemeDir}/js/plugins-ck.js"></script>
    <script src="{$ThemeDir}/js/main-ck.js"></script>
    <script>
        $(function() {
            var image = new Array ();
            image[0] = "imu_hd";
            image[1] = "burge_hd";
            image[2] = "pentacrest_hd";
            image[3] = "rec_hd";
            var size = image.length;
            var x = Math.floor(size*Math.random());
            $('.fill source.mp4').attr("src",'{$ThemeDir}/video/'+image[x]+'.mp4');
            $('.fill source.webm').attr("src",'{$ThemeDir}/video/'+image[x]+'.webm');
            $('.fill source.ogv').attr("src",'{$ThemeDir}/video/'+image[x]+'.ogv');
        });
    </script>
</body>
</html>

