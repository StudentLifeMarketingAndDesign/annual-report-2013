jQuery(document).ready(function($) {

    // Isotope
    var $container = $('#isotope-menu');

    $container.isotope({
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


    var large_mode = 'only screen and (min-width: 900px)';
    if (Modernizr.mq(large_mode)) {
        "use strict";
        $('.preview-list').perfectScrollbar();
        
    }

}); 

jQuery(document).ready(function($) {

    // Toggle for nav menu
    $('.menu-button').click(function(e) {
        e.preventDefault();
        showMenu();
        $(this).text($(this).text() == 'Close' ? 'Menu' : 'Close');                        
    });

    // Toggle for sidebar
    $('.sidebar-button').click(function(e) {
        e.preventDefault();
        showSidebar();                                  
    });


    if ($(".preview-list").css("z-index") == "902" ){
        var height = $(window).height();
        $('.preview-list').css({'height': (height)+'px'});
    }

    $(window).resize(function() {
        if ($(".preview-list").css("z-index") == "902" ){
            var height = $(window).height();
            $('.preview-list').css({'height': (height)+'px'});
        }
    });
});




