
<article class="article">
	<div class="spinner">
		<img src="{$ThemeDir}/images/spinner.gif" alt="">
	</div>

	<header class="article-header">
		<h1 class="article-title">$Title</h1>
		<div class="article-meta">
            <% if $WordsBy %><p>WRITTEN BY <em id="page-article-author">$WordsBy</em></p><% end_if %>
            <% if $VideoBy %><p>PHOTO BY <em>$VideoBy</em></p><% end_if %>
        </div>
    </header>
	<% if $Photo %>
		<div class="article-img">
			<img src="$Photo.URL" alt="$Title">
		</div>
    <% end_if %>
    <div class="article-body clearfix">
    	<% if $Excerpt %>
            <p class="article-excerpt">$Excerpt</p>
        <% end_if %>
		<div class="article-content">
			$Content
		</div>
	</div>
</article>


	

