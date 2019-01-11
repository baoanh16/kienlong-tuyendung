let slider = {
    newsSlide: () => {
        var swiper = new Swiper('.canhcam-news-1 .swiper-container', {
            slidesPerView: 2,
            spaceBetween: 20,
            autoplay: {
                delay: 5000,
            },
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
    levelRange: () => {
        let i = $('.member-wrapper .member-level .line-level').attr('data-level')
        $('.member-wrapper .member-level .line-level').find('span').css({
            'width': i
        })
        console.log(i);

    },
    init: () => {
        page.modalPHNTD()
        page.levelRange()
    }
}

document.addEventListener('scroll', () => {})
$(document).ready(function() {
    page.init()
    slider.init()
});