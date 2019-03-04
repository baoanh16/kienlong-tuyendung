$(document).ready(function () {
	$('.canhcam-rh-5 .owl-carousel').owlCarousel({
		// loop:true,
		items: 5,
		nav: true,
		navText: ['<i class="mdi mdi-chevron-left"></i>', '<i class="mdi mdi-chevron-right"></i>'],
		dots: false,
		responsive: {
			0: {
				items: 2
			},
			480: {
				items: 2
			},
			768: {
				items: 3
			},
			992: {
				items: 4
			},
			1200: {
				items: 5
			}
		}
	})
});

function setHeightchart() {
	var maxHeight = 0;

	$('.canhcam-rh-5 .item figure').each(function () {
		var thisH = $(this).height();
		if (thisH > maxHeight) {
			maxHeight = thisH;
		}
	});
	$('.canhcam-rh-5 .item figure').height(maxHeight)
}

function setHeighticon() {
	var maxHeight = 0;

	$('.canhcam-rh-5 .item figure img').each(function () {
		var thisH = $(this).height();
		if (thisH > maxHeight) {
			maxHeight = thisH;
		}
	});
	$('.canhcam-rh-5 .item figure img').height(maxHeight)
}
$(function () {
	// setHeighticon()
	setHeightchart()
})