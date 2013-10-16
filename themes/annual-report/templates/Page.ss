<% include DocHead %>

<body class="$ClassName">

	<a href="#main" class="visuallyhidden focusable">Skip to main content</a>

	<% include DivisionBar %>

	<div id="content-wrapper" class="clearfix">

	    <% include OffCanvasNav %>

	    <section id="menu" data-spy="affix" data-offset-top="43" class="affix-top">
	    	<% include FilterMenu %>
	        <% include PreviewList %>                                         
	    </section>

	    <article id="main" class="article" role="main">
	    	$Layout
		</article>
	</div>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="{$BaseHref}division-bar/js/division-bar.js"></script>
	<script src="{$ThemeDir}/js/plugins-ck.js"></script>
	<script src="{$ThemeDir}/js/plugins/ajaxify-html5.js"></script>
	<script src="{$ThemeDir}/js/main.js"></script>
	<script src="{$ThemeDir}/js/plugins/jquery.mousewheel.js"></script>
    <script src="{$ThemeDir}/js/plugins/perfect-scrollbar.js"></script>
    <script src="{$ThemeDir}/js/plugins/affix-bootstrap.js"></script>

</body>
</html>
