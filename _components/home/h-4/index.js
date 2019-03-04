$(function() {
    if ($('.canhcam-home-4 .slide').length) {
        $('.canhcam-home-4 .slide').owlCarousel({
            animateIn: 'fadeIn',
            animateOut: 'fadeOut',
            items: 1,
            loop: true,
            center: false,
            margin: 50,
            navText: ['<i class="mdi mdi-chevron-left"></i>', '<i class="mdi mdi-chevron-right"></i>'],
            nav: true,
            dots: false,
            // autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: false,
            callbacks: true,
            responsive: {
                992: {
                    items: 2
                }
            }

        });
    }

});