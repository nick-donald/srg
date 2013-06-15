$(document).ready(function(){
    
    $window = $(window);
    
    $('#slideshow');

    $window.scroll(function(){


        var navPos = $('bios-side-nav').position();

        var height = 0.8 * $('.detail-page').height()
        
        if ($window.scrollTop() >= 50) {


            
            $('#buttons-container').css('top', 0).css('position', 'fixed').css({ marginTop: 0 });
            $('.mainnav li').css({ top: -5 });
        }
        
        if ($window.scrollTop() < 50) {
            $('#buttons-container').css('position', 'relative').css({ marginTop: -5 });
            $('.mainnav li').css({ top: 0 });
        }

        if ( $window.scrollTop() >= height ) {
            $('.bios-side-nav').css({ position: 'absolute' }).css({ top: height  });
        }

        if ( $window.scrollTop() < height ) {
            $('.bios-side-nav').css({ position: 'fixed' }).css({ top: 20 + '%' });
        }
        
    });
    
    
    $('ul.mainnav li').mouseenter(function(){
        $(this).find('div.subnav-div').show();
    });
    
    $('ul.mainnav li').mouseleave(function(){
        $(this).find('.subnav-div').hide();
    })
    
    
    $('.slideshow-buttons').click(function() {
        $(this).addClass('selected');
        $(this).siblings().removeClass('selected');
        var index = $('.slideshow-buttons').index(this);
        
        c = index;
        if ($('.image:eq(' + index + ')').hasClass('showing')) {
            
        }
        
        else {
        $('.showing').animate({ left: -1500 }, { duration: 700, easing: 'easeOutQuad', complete:
                              function () {
                                $(this).toggleClass('showing').css({ left: 1500 });
                              }
                              });
        $('.image:eq(' + index + ')').toggleClass('showing').animate( {left: 0}, { duration: 700, easing: 'easeOutQuad' } );
        }
    });
    
    var c = 0;
    function slideshow2() {
        
        
        var interval = setInterval(function() { 
                          c++;
                          
                          if (c < 4) {
                            
                          
                          
                            $('.slideshow-buttons:eq(' + c + ')').addClass('selected')
                                                                 .siblings().removeClass('selected');
                            $(this).siblings().removeClass('selected');
                            
                            
                            $('.photo-title span').hide( 'slide', { duration: 200, complete:
                                    function () {
                                        switch (c) {
                                            
                                            case 0:
                                                $(this).html('Retail Consulting').delay(200).show('slide', { duration: 300, direction: 'right' });
                                                break;
                                            case 1:
                                                $(this).html('Industry Insights').delay(200).show('slide', { duration: 300, direction: 'right' });
                                                break;
                                            case 2:
                                                $(this).html('Retail Litigation').delay(200).show('slide', { duration: 300, direction: 'right' });
                                                break;
                                            case 3:
                                                
                                                break;
                                        }
                                    }
                                    
                                    });
                          
                          $('.showing').animate({ left: -1500 }, { duration: 700, easing: 'easeOutQuad', complete:
                              function () {
                                $(this).toggleClass('showing').css({ left: 1500 });
                              }
                              });
                          
                          $('.image:eq(' + c + ')').toggleClass('showing').animate( {left: 0}, { duration: 700, easing: 'easeOutQuad' } );
                          
                          if(c == 3) {
                            
                            clearInterval(interval);
                            c = -1;
                            $('.photo-title span').html('Digital Marketing').delay(200).show('slide', { duration: 300, direction: 'right' });
                            slideshow2();
                          }
                          
                          }
                          
                          else {
                            clearInterval(interval);
                            c = -1;
                            slideshow2();
                          }
                          
                   }, 5500);
        
        
    }
    
    if ($window.width() > 760) {
        slideshow2();
    }
    
    if ($window.width() < 790) {
        $('.retail-consulting').find('.nav-span-title').text('Consulting');
        $('.retail-litigation').find('.nav-span-title').text('Litigation');
    }
    

    $('.explainer').hover(function(){
        $(this).find('.explainer-content').animate({left: 450 });
    }, 
        function(){
            $(this).find('.explainer-content').animate({left: 0 });
        }
    );
    


    $('#menu').click(function(){
        $('#mobile-dropdown').toggle('slide', { direction: 'up', easing: 'easeInOutExpo'});
    });

    $('#search').click(function(){
        $('#mobile-search').toggle('slide', { direction: 'up', easing: 'easeInOutExpo'});
    });


    $('.bios-side-nav li').click(function(){
        var name = $(this).text();
        name = name.replace(/\s+/g, '').toLowerCase();

        var pos = $( '.' + name ).position();
        var posTop = pos.top;

        $('body,html').animate({ scrollTop:  ( posTop + 60 ) }, { duration: 1000, easing: 'easeOutQuad' });        
    });


    $('.articles-select').click(function(){
        if ($(this).hasClass('selected-admin-input')) {
            return;
        }

        else {
            $(this).toggleClass('selected-admin-input');
            $('.videos-select').toggleClass('selected-admin-input');
            $('.articles-dashboard').toggle();
            $('.videos-dashboard').toggle();
        }
    });

    $('.videos-select').click(function(){
        if ($(this).hasClass('selected-admin-input')) {
            return;
        }

        else {
            $(this).toggleClass('selected-admin-input');
            $('.articles-select').toggleClass('selected-admin-input');
            $('.videos-dashboard').toggle();
            $('.articles-dashboard').toggle();
        }
    });

    $('.new-article').click(function(){
        $('.article-post').toggle();
    });

    $('.new-video').click(function() {
        $('.video-post').toggle();
    });


});