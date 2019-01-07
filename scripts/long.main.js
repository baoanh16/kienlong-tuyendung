let slider = {
    newsSlide: () => {
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 2,
            spaceBetween: 20,
            navigation: {
                nextEl: '.swiper-next',
                prevEl: '.swiper-prev',
            },
            breakpoints: {
                992: {
                    slidesPerView: 1,
                    spaceBetween: 10,
                }
            }
        });
    },
    init: () => {
        slider.newsSlide()
    }
}
let page = {
    // Modal phản hồi từ nhà tuyển dụng
    modalPHNTD: () => {
        $(".kienlong-phanHoiTuNTD .kienlong-table table tbody tr td a.detail").on("click", function() {
            let element = $(this).parents('td').find('.detail-container')
            element.addClass('active')
        })
        $('.detail-container .detail-wrapper .detail-close').on('click', function() {
            $(this).parents('.detail-container').removeClass('active')
        })
    },
    init: () => {
        page.modalPHNTD()
    }
}

document.addEventListener('scroll', () => {})
$(document).ready(function() {
    page.init()
    slider.init()
});