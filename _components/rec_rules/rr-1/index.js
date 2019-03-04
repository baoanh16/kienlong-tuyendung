function marginForm_rec_rule_left() {
	if ($('.canhcam-rr-1 .canhcam-card-content-wrapper').length) {
		$('.canhcam-rr-1 .canhcam-card:nth-child(odd) .canhcam-card-content-wrapper').css({
			'margin-left': $('.canhcam-breadcrumb-1 .container').offset().left
		})
		$('.canhcam-rr-1 .canhcam-card:nth-child(even) .canhcam-card-content-wrapper').css({
			'margin-right': $('.canhcam-breadcrumb-1 .container').offset().left
		})
	}
}

function marginForm_rec_rule_center() {
	if ($(window).width() < 992) {
		if ($('.canhcam-rr-1 .canhcam-card-content-wrapper').length) {
			$('.canhcam-rr-1 .canhcam-card-wrapper').css({
				'margin-left': $('.canhcam-breadcrumb-1 .container').offset().left
			})
			$('.canhcam-rr-1 .canhcam-card-wrapper').css({
				'margin-right': $('.canhcam-breadcrumb-1 .container').offset().left
			})
		}

	} else {
		if ($('.canhcam-rr-1 .canhcam-card-content-wrapper').length) {
			$('.canhcam-rr-1 .canhcam-card-wrapper').css({
				'margin-left': "0"
			})
			$('.canhcam-rr-1 .canhcam-card-wrapper').css({
				'margin': 0
			})
		}
	}
}

$(window).width(function () {
	if ($(window).width() > 992) {
		marginForm_rec_rule_left()

	} else {
		marginForm_rec_rule_center()
	}
	// if ($(window).width() > 992)
})

$(window).resize(function () {
	if ($(window).width() > 992) {
		marginForm_rec_rule_left()

	} else {
		marginForm_rec_rule_center()
	}
	// if ($(window).width() > 992)
})
