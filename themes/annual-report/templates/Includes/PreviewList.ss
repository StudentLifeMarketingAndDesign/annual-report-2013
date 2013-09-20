

<nav class="preview-list clearfix" role="navigation">
	<ul id="container">
		<% loop $Menu(1) %>
		<li class="item $Challenge $LinkingMode">

			<a href="$Link" class="preview-link $LinkingMode" title="Go to the $Title.XML page">
				<% if $Photo %>
  					<img src="$Photo.CroppedImage(100,100).URL" class="preview-thumb" alt="$Title">
  				<% end_if %>
  				
                <h3 class="preview-title">$MenuTitle.XML</h3>

                <% if $Department %>
                	<span class="preview-dept">$Department</span>
                <% end_if %>

                <!-- <p class="preview-excerpt">$Excerpt</p> -->
            </a>
		</li>
		<% end_loop %>
	</ul>
</nav>

