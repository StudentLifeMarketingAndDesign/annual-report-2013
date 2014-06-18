<div class="menu">
    <a href="{$BaseHref}" class="oldcap-logo">
        <img src="{$ThemeDir}/images/capitol.png" alt="University of Iowa Capitol">
        <strong class="year"><span>2013</span></strong>
        <h1 class="heading-main">Annual<span class="break"></span> Report</h1>
        <h2 class="heading-sec">Division of Student Life</h2>
    </a>
    <ul id="filters" class="main-nav clearfix">
    	<li><a href="#all" data-filter="*" class="active">All</a></li>
    	<% loop Categories %>
    		<li><a href="#$Title" data-filter=".$Title" class="">$Title</a></li>
    	<% end_loop %>
       	<%-- 
        <li><a href="#excel" data-filter=".Excel">Excel</a></li>
        <li><a href="#stretch" data-filter=".Stretch">Stretch</a></li>
        <li><a href="#choose" data-filter=".Choose">Choose</a></li>
        <li><a href="#engage" data-filter=".Engage">Engage</a></li>
        <li><a href="#serve" data-filter=".Serve">Serve</a></li>
        <li><a href="#about" data-filter=".About">About</a></li>
        --%>
    </ul>
</div>