function modify_height() {
	var main = $('.block-rule .block-quote-wrapper:nth-child(2) ').outerHeight();
	$('.block-rule .block-quote-wrapper:nth-child(odd)').height(main - 50);
}
$(window).resize(function () {
	if ($(window).width() > 992) {
		modify_height();
	} else {
		$('.block-rule .block-quote-wrapper').css('height', '100%');
	}
})

$(window).width(function () {
	if ($(window).width() > 992) {
		modify_height();
	} else {
		$('.block-rule .block-quote-wrapper').css('height', '100%');
	}

})
