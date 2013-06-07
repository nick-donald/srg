$(document).ready(function(){
    
    $window = $(window);
    
    $('#slideshow');

    $window.scroll(function(){

        //var height = $('.bios-side-nav').height();

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
            $('.bios-side-nav').css({ position: 'fixed' }).css({ top: 'auto' });
        }
        
    });
    
    //$('.subnav').hide();
    
    $('ul.mainnav li').mouseenter(function(){
        var x = $(this).offset().left;
        var winSize = $(window).width();
        var valEdges = (winSize - 1000) / 2;
        var valInsideEdge = x - valEdges;
        $(this).find('div.subnav-div').css('left', -valInsideEdge);
        $(this).find('div.subnav-div').show();
        
    });
    
    $('ul.mainnav li').mouseleave(function(){
        $(this).find('div.subnav-div').hide();
    })
    
    //$("ul.mainnav li").mouseover(function() { //When trigger is clicked...
    //
    //    //Following events are applied to the subnav itself (moving subnav up and down)
    //    $(this).parent().find("ul.subnav").slideDown('fast').show(); //Drop down the subnav on click
    //    
    //    $(this).parent().hover(function() {
    //    }, function(){
    //            $(this).parent().find("ul.subnav").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
    //    });
    //    
    //    //Following events are applied to the trigger (Hover events for the trigger)
    //    }).hover(function() {
    //            $(this).addClass("subhover"); //On hover over, add class "subhover"
    //    }, function(){	//On Hover Out
    //            $(this).removeClass("subhover"); //On hover out, remove class "subhover"
    //            });
    //
    //
    
    //slideshow
    
    $('.slideshow-buttons').click(function() {
        $(this).addClass('selected');
        $(this).siblings().removeClass('selected');
        var index = $('.slideshow-buttons').index(this);
        
        c = index;
        if ($('.image:eq(' + index + ')').hasClass('showing')) {
            
        }
        
        else {
        
        $('.photo-title span').hide( 'slide', { duration: 200, complete:
                                    function () {
                                        switch (index) {
                                            
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
                                                $(this).html('Digital Marketing').delay(200).show('slide', { duration: 300, direction: 'right' });
                                                break;
                                        }
                                    }
                                    
                                    });
        $('.showing').animate({ left: -1500 }, { duration: 700, easing: 'easeOutQuad', complete:
                              function () {
                                $(this).toggleClass('showing').css({ left: 1500 });
                              }
                              });
        $('.image:eq(' + index + ')').toggleClass('showing').animate( {left: 0}, { duration: 700, easing: 'easeOutQuad' } );
        }
    });
    
    var slideshow = function(){
    $('.photo-title .container').show('slide', {duration: 900, direction: 'right'});
    $('.photo-title .container').delay(3500).hide('slide', 900, function(){
            $('#image1').fadeToggle('slow', function(){
                    $('.photo-title').find('.container').html('<span>Industry Insights</span>');
                    $('.photo-title').find('.container').show('slide', {duration: 900, direction: 'right'}, function(){
                             $('.photo-title').find('.container').delay(3500).hide('slide', 900, function(){
                                    $('#image1').attr('src', 'banner3.jpg');
                                    $('.photo-title').find('.container').html('<span>Retail Litigation</span>');
                                    $('#image1').fadeToggle('slow', function(){
                                            $('.photo-title').find('.container').show('slide', {duration: 900, direction: 'right'}, function(){
                                                $('.photo-title').find('.container').delay(3500).hide('slide', 900, function(){
                                                    $('#image-container').css('background-image', 'url("banner4.jpg")');
                                                    $('.photo-title').find('.container').html('<span>Digital Marketing</span>');
                                                    $('#image1').fadeToggle('slow', function(){
                                                            $('.photo-title').find('.container').show('slide', {duration: 900, direction: 'right'}, function(){
                                                                    $('.photo-title').find('.container').delay(3500).hide('slide', 900, function(){
                                                                        $('#image1').attr('src', 'new_banner1.jpg');
                                                                        $('.photo-title').find('.container').html('<span>Retail Consulting</span>');
                                                                        $('#image1').fadeToggle('slow', function(){
                                                                                $('#image-container').css('background-image', 'url("banner2.jpg")');
                                                                                slideshow();
                                                                            });
                                                                    });
                                                                });
                                                        });
                                                });
                                            });
                                        });
                                });
                        });
                });
        });
    };
    
    //slideshow();
    
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
        //$(this).siblings('.explainer').css({ opacity: 0.6 });
        
        var pos = $(this).position();
        var xPos = pos.left;
        var arrowPos = xPos + $(this).width() / 2 - 15;
        
        $('.arrow').animate({left: arrowPos});
    },
        function () {
            //$(this).siblings('.explainer').css({ opacity: 1 });
        }
    );
    
    
    $('.pull-left .article-pic').css('background', 'url("burt1.png") no-repeat').css('background-size', 'cover');
    $('.pull-right .article-pic').css('background', 'url("burt2.png") no-repeat').css('background-size', 'cover');
    $('#video-container div:nth-child(1) .video-pic').css('background', 'url("video1.png") no-repeat').css('background-size', 'cover');
    $('#video-container div:nth-child(2) .video-pic').css('background', 'url("video2.png") no-repeat').css('background-size', 'cover');
    $('#video-container div:nth-child(3) .video-pic').css('background', 'url("video3.png") no-repeat').css('background-size', 'cover');

    $('#menu').click(function(){
        $('#mobile-dropdown').toggle('slide', { direction: 'up', easing: 'easeInOutExpo'});
    });

    $('#search').click(function(){
        $('#mobile-search').toggle('slide', { direction: 'up', easing: 'easeInOutExpo'});
    });

    // adjust height of detail pages

    // var pageHeight = $('.main-content-container').height();

    //$('.detail-page').css({height: $(this).height + pageHeight});

    //bios selector

    $('.bios-side-nav li').click(function(){
        var name = $(this).text();
        name = name.replace(/\s+/g, '');
        name = name.toLowerCase();

        var pos = $( '.' + name ).position();
        var posTop = pos.top;

        $('body,html').animate({ scrollTop:  ( posTop + 60 ) });        
    });

});