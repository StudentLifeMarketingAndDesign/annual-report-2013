<% include DocHead %>

<body class="$ClassName">

    <% include DivisionBar %>

    <div id="content-wrapper" class="clearfix">
		
		<% include OffCanvasNav %>

		<section id="menu" data-spy="affix" data-offset-top="43" class="affix-top">
			<% include FilterMenu %>
			<% include PreviewList %>                                         
		</section>

		<section id="main" role="main" style="height: 100%;">
			<div class="home-content" style="height: 100%;">
				&nbsp;
				<img src="{$ThemeDir}/images/dosl-lg.png" alt="" class="dosl-img" width="400">
			</div>
		</section>
	</div>

    <div id='background-video' class='visible-md visible-lg'>
        <video  autoplay loop preload class='fill'>
            <source class="mp4" src="{$ThemeDir}/video/imu_hd.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />
            <source class="webm" src="{$ThemeDir}/video/imu_hd.webm" type='video/webm; codecs="vp8, vorbis"' />
            <source class="ogv" src="{$ThemeDir}/video/imu_hd.ogv" type='video/ogg; codecs="theora, vorbis"' />
            <img src="{$ThemeDir}/images/fallback.jpg" alt="Annual Report" />
        </video>
    </div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="{$ThemeDir}/js/plugins/affix-bootstrap.js"></script>
    <script src="{$BaseHref}division-bar/js/division-bar.js"></script>
    <script src="{$ThemeDir}/js/plugins-ck.js"></script>
    <script src="{$ThemeDir}/js/main.js"></script>
    <script src="{$ThemeDir}/js/plugins/jquery.mousewheel.js"></script>
    <script src="{$ThemeDir}/js/plugins/perfect-scrollbar.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var large_mode = 'only screen and (min-width: 650px)';
            if (Modernizr.mq(large_mode)) {
                "use strict";
                $('.preview-list').perfectScrollbar();
            }
        });
    </script>

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

