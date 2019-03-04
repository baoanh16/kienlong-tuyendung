$(document).ready(function() {
    // $('.canhcam-rqa-1 .canhcam-kl-1 .item:first-child .name').addClass('active');
    $('.canhcam-rqa-1 .canhcam-kl-1 .item .introduce').hide();
    // $('.canhcam-rqa-1 .canhcam-kl-1 .item:first-child .introduce').show();
    $('.canhcam-rqa-1 .canhcam-kl-1 .item .name').on('click', (function() {
        if ($(this).parents('.item').find('.introduce').is(':hidden') === true) {
            $('.canhcam-rqa-1 .canhcam-kl-1 .item').removeClass('active');
            $('.canhcam-rqa-1 .canhcam-kl-1 .item .introduce').slideUp();
            $(this).parents('.item').find('.introduce').slideDown();
            $(this).parents('.item').addClass('active');
        } else {
            $(this).parents('.item').removeClass('active');
            $(this).parents('.item').find('.introduce').slideUp();

        }
    }));
})
