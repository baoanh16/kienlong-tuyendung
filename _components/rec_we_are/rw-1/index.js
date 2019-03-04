function marginForm_rec_weare_left() {
	if ($('.canhcam-rw-1 .canhcam-card-content-wrapper').length) {
		$('.canhcam-rw-1 .canhcam-card:nth-child(odd) .canhcam-card-content-wrapper').css({
			'margin-left': $('.canhcam-rw-2 .container').offset().left
		})
		$('.canhcam-rw-1 .canhcam-card:nth-child(even) .canhcam-card-content-wrapper').css({
			'margin-right': $('.canhcam-rw-2 .container').offset().left
		})
	}
}

function marginForm_rec_weare_center() {
	if ($(window).width() < 992) {
		if ($('.canhcam-rw-1 .canhcam-card-content-wrapper').length) {
			$('.canhcam-rw-1 .canhcam-card-wrapper').css({
				'margin-left': $('.canhcam-rw-2 .container').offset().left
			})
			$('.canhcam-rw-1 .canhcam-card-wrapper').css({
				'margin-right': $('.canhcam-rw-2 .container').offset().left
			})
		}

	} else {
		if ($('.canhcam-rw-1 .canhcam-card-content-wrapper').length) {
			$('.canhcam-rw-1 .canhcam-card-wrapper').css({
				'margin-left': "0"
			})
			$('.canhcam-rw-1 .canhcam-card-wrapper').css({
				'margin': 0
			})
		}
	}
}

$(window).width(function () {
	if ($(window).width() > 992) {
		marginForm_rec_weare_left()

	} else {
		marginForm_rec_weare_center()
	}
	// if ($(window).width() > 992)
})

$(window).resize(function () {
	if ($(window).width() > 992) {
		marginForm_rec_weare_left()

	} else {
		marginForm_rec_weare_center()
	}
	// if ($(window).width() > 992)
})
