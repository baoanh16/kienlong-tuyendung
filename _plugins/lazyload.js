const setSrcImage = el => {
	let src = el.getAttribute('data-src')
	el.setAttribute('src', src)
}

const setBgImage = el => {
	let src = el.getAttribute('data-img')
	el.setAttribute('style', 'background-image: url("' + src + '")')
}

var findImage = () => {
	let imgList = document.querySelectorAll('.lazyload')
	for (var i = 0; i < imgList.length; i++) {
		let offsetTop = imgList[i].getBoundingClientRect().top + window.scrollY
		if (window.scrollY + window.innerHeight * 0.85 >= offsetTop) {
			i = i;
			setSrcImage(imgList[i])
		}
	}
}

var backgroundImage = () => {
	let bgImageList = document.querySelectorAll('[data-img]')
	for (var i = 0; i < bgImageList.length; i++) {
		setBgImag(bgImageList[i])
	}
}