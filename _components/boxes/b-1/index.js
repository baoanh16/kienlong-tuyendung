function marginH2Boxes() {
    if ($('.canhcam-boxes-1 .item figure figcaption').length && $(window).width() > 992) {
        $('.canhcam-boxes-1 .item:first-child figure figcaption').css({ 'left': $('.canhcam-breadcrumb-1 .container').offset().left + 15 })
    }
}
marginH2Boxes()