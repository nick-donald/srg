$(document).ready(function(){
    
    $window = $(window);
    
    $('#slideshow');
    
    $window.scroll(function(){
        
        if ($window.scrollTop() > 95) {
            
            $('#buttons-container').css('top', 0).css('position', 'fixed');
        }
        
        else {$('#buttons-container').css('position', 'relative');}
        
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
    var slideshow = function(){
    $('.photo-title').show('slide', 900);
    $('.photo-title').delay(3500).hide('slide', 900, function(){
            $('#image1').fadeToggle('slow', function(){
                    $('.photo-title').html('<span>Industry Insights</span>');
                    $('.photo-title').show('slide', 900, function(){
                             $('.photo-title').delay(3500).hide('slide', 900, function(){
                                    $('#image1').attr('src', 'banner3.jpg');
                                    $('.photo-title').html('<span>Retail Litigation</span>');
                                    $('#image1').fadeToggle('slow', function(){
                                            $('.photo-title').show('slide', 900, function(){
                                                $('.photo-title').delay(3500).hide('slide', 900, function(){
                                                    $('#image-container').css('background-image', 'url("banner4.jpg")');
                                                    $('.photo-title').html('<span>Digital Marketing</span>');
                                                    $('#image1').fadeToggle('slow', function(){
                                                            $('.photo-title').show('slide', 900, function(){
                                                                    $('.photo-title').delay(3500).hide('slide', 900, function(){
                                                                        $('#image1').attr('src', 'new_banner1.jpg');
                                                                        $('.photo-title').html('<span>Retail Consulting</span>');
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
    
    slideshow();

    
    $('#SRG-news .article-pic').css('background', 'url("burt1.png") no-repeat').css('background-size', 'contain');
    $('#Industry-news .article-pic').css('background', 'url("burt2.png") no-repeat').css('background-size', 'contain');
    $('#video-container div:nth-child(1) .video-pic').css('background', 'url("video1.png") no-repeat').css('background-size', 'cover');
    $('#video-container div:nth-child(2) .video-pic').css('background', 'url("video2.png") no-repeat').css('background-size', 'cover');
    $('#video-container div:nth-child(3) .video-pic').css('background', 'url("video3.png") no-repeat').css('background-size', 'cover');


});