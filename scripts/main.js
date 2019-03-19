try {
	const lang = new MappingListener({
		selector: '.language',
		mobileWrapper: ".main-menu",
		mobileMethod: "insertBefore",
		desktopWrapper: ".account",
		desktopMethod: "insertBefore",
		breakpoint: 992,
	}).watch();

} catch (error) {

}

try {
	const hotline = new MappingListener({
		selector: '.hotline',
		mobileWrapper: ".main-menu",
		mobileMethod: "insertAfter",
		desktopWrapper: ".language",
		desktopMethod: "insertBefore",
		breakpoint: 992,
	}).watch();

} catch (error) {

}



$(document).ready(function () {

	$('.dropdown').on('click', function () {
		$('.dropdown-menu').toggleClass('show')
	})

	$('.has-sub').on('click', function () {
		$('.sub-menu').toggleClass('show')
	})

	$('.has-sub').on('mouseover', function () {
		$('.sub-menu').addClass('show')
	})
	$('.has-sub').parent().siblings().on('mouseover', function () {
		$('.sub-menu').removeClass('show')
	})
	$('.sub-menu').on('mouseover', function () {
		$('.sub-menu').addClass('show')
	})
	$('.sub-menu').on('mouseout', function () {
		$('.sub-menu').removeClass('show')
	})

	$('.faq-item .answer').slideUp()
	$('.faq-item .question').on('click', function () {
		$(this).next().slideToggle()
		$(this).toggleClass('active')
		$(this).parent().siblings().children('.question').next().slideUp()
		$(this).parent().siblings().children('.question').removeClass('active')
	})
	if ($(window).width() > 992) {
		$('.kienlong-quytrinhtuyendung-1 .items-list .item .title').on('mouseover', function () {
			$(this).next().fadeIn();
			$(this).next().addClass('active');
			$(this).parent().siblings().children('.content').fadeOut();
			$(this).parent().siblings().children('.content').removeClass('active');
			const height = $('.kienlong-quytrinhtuyendung-1 .ModuleContent').height() 
			+ $('.kienlong-quytrinhtuyendung-1 .items-list .content.active').outerHeight();
			$('.kienlong-quytrinhtuyendung-1').css('height', height + 70 + 44);
		})
	}

	$('.kienlong-header-1 .username').on('click', function () {
		$('.kienlong-header-1 .user-management').slideToggle()
		$('.kienlong-header-1 .bottom-nav').removeClass('active')
	});
	$('.kienlong-header-1 .avatar').on('click', function () {
		$('.kienlong-header-1 .user-management').slideToggle()
		$('.kienlong-header-1 .bottom-nav').removeClass('active')
	});

	$('.kienlong-header-1 .btn-close-menu').on('click', function () {
		$('.kienlong-header-1 .bottom-nav').removeClass('active');
	})

	$('.kienlong-header-1 .menu-toggle').on('click', function () {
		$('.kienlong-header-1 .bottom-nav').toggleClass('active')
		$('.kienlong-header-1 .user-management').slideUp()
	})
	if ($('.friend-sharing').length != 0) {
		$('.friend-sharing').iziModal({
			radius: 0,
			transitionIn: "fadeInDown",
			transitionOut: "fadeOutUp"
		})
	}

	$(document).on('click', '.kienlong-tuyendung-ct .btn-share', function (event) {
		event.preventDefault();
		$('.friend-sharing').iziModal('open');
	});

	$(document).on('click', '.friend-sharing .modal-close', function (event) {
		$('.friend-sharing').iziModal('close');
	});

	$(document).on('click', '.nav-qlhs-toggle', function (event) {
		$('.nav-qlhs').slideToggle()
	});

	$(window).on('scroll', function () {
		if ($(window).outerWidth() >= 992) {
			if ($(window).scrollTop() != 0) {
				if (!$('.kienlong-header-1').hasClass("minimize")) {
					$('.kienlong-header-1').addClass('minimize');
				}
				
			} else {
				$('.kienlong-header-1').removeClass('minimize');
			}
		}
	})

});