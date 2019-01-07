
const lang = new MappingListener({
	selector: '.language',
	mobileWrapper: ".main-menu",
	mobileMethod: "insertBefore",
	desktopWrapper: ".account",
	desktopMethod: "insertBefore",
	breakpoint: 992,
}).watch();

const hotline = new MappingListener({
	selector: '.hotline',
	mobileWrapper: ".main-menu",
	mobileMethod: "insertAfter",
	desktopWrapper: ".language",
	desktopMethod: "insertBefore",
	breakpoint: 992,
}).watch();



$(document).ready(function () {
	
    $('.dropdown').on('click',function(){
        $('.dropdown-menu').toggleClass('show')
	})
	
    $('.has-sub').on('click',function(){
        $('.sub-menu').toggleClass('show')
    })

    $('.kienlong-header-1 .username').on('click',function(){
        $('.kienlong-header-1 .user-management').slideToggle()
        $('.kienlong-header-1 .bottom-nav').removeClass('active')
    })

    $('.kienlong-header-1 .menu-toggle').on('click',function(){
        $('.kienlong-header-1 .bottom-nav').toggleClass('active')
	})
	
	$('.friend-sharing').iziModal({
		radius: 0,
		transitionIn: "fadeInDown",
		transitionOut: "fadeOutUp"
	})
	$(document).on('click', '.kienlong-tuyendung-ct .btn-share', function (event) {
		event.preventDefault();
		$('.friend-sharing').iziModal('open');
	});
	$(document).on('click', '.friend-sharing .modal-close', function (event) {
		$('.friend-sharing').iziModal('close');
	});
});
