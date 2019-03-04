$(document).ready(function() {
    $('.canhcam-rh-1 .menu').on('click', function() {
        $(this).toggleClass('active')
        if ($('.canhcam-rh-1 .menu-list').is(':hidden') == true) {
            $('.canhcam-rh-1 .menu-list').slideDown()
        } else {
            $('.canhcam-rh-1 .menu-list').slideUp()
        }
    })
})
function setHeightli_rec() {
    var maxHeight = 0;

    $('.canhcam-rh-1 ul li').each(function() {
        var thisH = $(this).height();
        if (thisH > maxHeight) { maxHeight = thisH; }
    });
    $('.canhcam-rh-1 ul li').height(maxHeight)
}

$(window).width(function(){
var width = $(window).width();
if  ( (width > 992) && (width < 1200)  )  {
	setHeightli_rec()
} else {
	$('.canhcam-rh-1 ul li').css("height", "100%")
}
})

$(window).resize(function(){
	var width = $(window).width();
	if  ( (width > 992) && (width < 1200)  )  {
		setHeightli_rec()
	} else {
		$('.canhcam-rh-1 ul li').css("height", "100%")
	}
})
