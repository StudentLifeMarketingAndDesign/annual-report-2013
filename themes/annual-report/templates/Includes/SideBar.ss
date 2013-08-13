<% if $Menu(2) %>
	<nav class="preview-list clearfix">
		<% with $Level(1) %>
			<ul id="container">
				<% include SidebarMenu %>
			</ul>
		<% end_with %>
	</nav>
<% end_if %>
