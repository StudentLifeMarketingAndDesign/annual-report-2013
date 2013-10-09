$(function() {

    // Isotope
    var $container = $('#container');
    var large_mode = 'only screen and (min-width: 980px)';

    // Only use Isotope if larger than 980px
    if (Modernizr.mq(large_mode)) { 
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
    }
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
    if ($(".preview-list").css("z-index") == "900" ){
        var height = $(window).height();
        var width = $(window).width();
        var divisionbarheight = 43;
        var navheight = $('.off-canvas-navigation').height();
        var previewheight = height - (navheight + divisionbarheight);
        $('.preview-list').css({'height': (previewheight)+'px'});
    }
    if ($(".preview-list").css("z-index") == "901" ){
        var height = $(window).height();
        var width = $(window).width();
        var divisionbarheight = 43;
        var menuheight = $('.menu').height();
        var previewheight = height - (menuheight + divisionbarheight);
        $('.preview-list').css({'top': (43)+'px'});
        $('.preview-list').css({'height': (height - 43)+'px'});
    }
    if ($(".preview-list").css("z-index") == "902" ){
        var height = $(window).height();
        var width = $(window).width();
        var divisionbarheight = 43;
        var menuheight = $('.menu').height();
        var previewheight = height - (menuheight + divisionbarheight);
        $('.preview-list').css({'top': (43)+'px'});
        $('.preview-list').css({'height': (height - 43)+'px'});
    }

    $(window).resize(function() {
        if ($(".preview-list").css("z-index") == "900" ){
            var height = $(window).height();
            var width = $(window).width();
            var divisionbarheight = 43;
            var navheight = $('.off-canvas-navigation').height();
            var previewheight = height - (navheight + divisionbarheight);
            $('.preview-list').css({'height': (previewheight)+'px'});
        }
        if ($(".preview-list").css("z-index") == "901" ){
            var height = $(window).height();
            var width = $(window).width();
            var divisionbarheight = 43;
            var menuheight = $('.menu').height();
            var previewheight = height - (menuheight + divisionbarheight);
            $('.preview-list').css({'top': (43)+'px'});
            $('.preview-list').css({'height': (height - 43)+'px'});
        }
        if ($(".preview-list").css("z-index") == "902" ){
            var height = $(window).height();
            var width = $(window).width();
            var divisionbarheight = 43;
            var menuheight = $('.menu').height();
            var previewheight = height - (menuheight + divisionbarheight);
            $('.preview-list').css({'top': (43)+'px'});
            $('.preview-list').css({'height': (height - 43)+'px'});
        }
    });

    /*
    * Full bleed background
    */
     
     function recalculateFills() {
         
         //get pixel size of browser window.
        var browserHeight = Math.round($(window).height());
        var browserWidth = Math.round($(window).width());
        
        
        //jquery all items on page with fill tag
        var fills = $('.fill');
        
        
        //for each fill, recalculate size and position and apply using jQuery
        fills.each(function () {
            
        //height of element. not neccessarily video
        var videoHeight = $(this).height();
        var videoWidth = $(this).width();


        //calculate new size
        var new_size = sxsw.full_bleed(browserWidth, browserHeight, videoWidth, videoHeight);

        //distance from top and left is half of the difference between the browser width and the size of the element
        $(this)
            .width(new_size.width)
            .height(new_size.height)
            .css("margin-left", ((browserWidth - new_size.width)/2))
            .css("margin-top", ((browserHeight - new_size.height)/2));
            
        });
     }
     
     recalculateFills();

    //we also have to recalculate if the window rectangle changes.
    $(window).resize(function() {
        recalculateFills();
    });

});




