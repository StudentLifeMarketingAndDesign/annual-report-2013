$(function() {
    var $container = $('#container');

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

    
}); 




var showSidebar = function() {
    $('body').removeClass("active-nav").toggleClass("active-sidebar");
    $('.menu-button').removeClass("active-button");                 
    $('.sidebar-button').toggleClass("active-button");
}

var showMenu = function() {
    $('body').removeClass("active-sidebar").toggleClass("active-nav");
    $('.sidebar-button').removeClass("active-button");              
    $('.menu-button').toggleClass("active-button"); 
}

// add/remove classes everytime the window resize event fires
jQuery(window).resize(function(){
    var off_canvas_nav_display = $('.off-canvas-navigation').css('display');
    var menu_button_display = $('.menu-button').css('display');
    if (off_canvas_nav_display === 'block') {           
        $("body").removeClass("three-column").addClass("small-screen");             
    } 
    if (off_canvas_nav_display === 'none') {
        $("body").removeClass("active-sidebar active-nav small-screen")
            .addClass("three-column");          
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


    //get dimensions
    if ($(".preview-list").css("z-index") == "901" ){
        var height = $(window).height();
        var width = $(window).width();
        var divisionbarheight = 43;
        var menuheight = $('.menu').height();
        var previewheight = height - (menuheight + divisionbarheight);

        $('.preview-list').css({'top': (menuheight + divisionbarheight)+'px'});
        $('.preview-list').css({'height': (previewheight)+'px'});
    }
    if ($(".preview-list").css("z-index") == "911" ){
        var height = $(window).height();
        var width = $(window).width();
        var divisionbarheight = 43;
        var menuheight = $('.menu').height();
        var previewheight = height - (menuheight + divisionbarheight);
        $('.preview-list').css({'top': (43)+'px'});
        $('.preview-list').css({'height': (height - 43)+'px'});
    }

    
    $(window).resize(function() {
        if ($(".preview-list").css("z-index") == "901" ){
            var height = $(window).height();
            var width = $(window).width();
            var divisionbarheight = 43;
            var menuheight = $('.menu').height();
            var previewheight = height - (menuheight + divisionbarheight);
            $('.preview-list').css({'top': (menuheight + divisionbarheight)+'px'});
            $('.preview-list').css({'height': (previewheight)+'px'});
        }
        if ($(".preview-list").css("z-index") == "911" ){
            var height = $(window).height();
            var width = $(window).width();
            var divisionbarheight = 43;
            var menuheight = $('.menu').height();
            var previewheight = height - (menuheight + divisionbarheight);
            $('.preview-list').css({'top': (43)+'px'});
            $('.preview-list').css({'height': (height - 43)+'px'});
        }
    });

});




