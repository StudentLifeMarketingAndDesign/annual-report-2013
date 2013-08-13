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