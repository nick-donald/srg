$(document).ready(function(){

    $('.bios-select').click(function(){
        if ($(this).hasClass('selected-admin-input')) {
            return;
        }

        else {
            $(this).toggleClass('selected-admin-input');
            $(this).siblings().removeClass('selected-admin-input');
            $('.bios-dashboard').show();
            $('.articles-dashboard, .videos-dashboard, .pages-dashboard').hide();
        }
    });

    $('.new-bio').click(function() {
        $('.bio-post').toggle();
    });

    $('.pages-select').click(function(){
        if ($(this).hasClass('selected-admin-input')) {
            return;
        }

        else {
            $(this).toggleClass('selected-admin-input');
            $(this).siblings().removeClass('selected-admin-input');
            $('.pages-dashboard').show();
            $('.articles-dashboard, .videos-dashboard, .bios-dashboard').hide();
        }
    })

    $('.alert').delay(2000).fadeOut();

});