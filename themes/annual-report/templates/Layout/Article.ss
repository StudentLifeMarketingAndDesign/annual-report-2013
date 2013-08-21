<% include Menu %>
<% include PreviewList %>


	<!-- <nav class="nav-bar">
		<div class="nav-wrap">

		</div>
		<div class="bar">
			<div class="nav-btn"></div>
		</div>
	</nav>

	<div class="cover">
		<div class="cover-img" style="background-image: url('$Photo.URL');"></div>
	</div> -->

	<article class="article" role="main">
		<% if $Photo %>
			<div class="article-img">
				<img src="$Photo.SetWidth(765).URL" alt="$Title">
			</div>
	    <% end_if %>

		<div class="article-body clearfix">
			<h1>$Title</h1>
	        <div class="article-head">
	            <div class="article-intro">
	                <p>$Excerpt</p>
	            </div>
	            <div class="article-meta">
	                <% if $WordsBy %><p>WRITTEN BY <em id="page-article-author">$WordsBy</em></p><% end_if %>
	                <% if $VideoBy %><p>PHOTO BY <em>$VideoBy</em></p><% end_if %>
	            </div>
	        </div>
			<div class="article-content">
				$Content
			</div>
		</div>
	</article>

