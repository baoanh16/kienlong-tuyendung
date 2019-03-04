// var playButton = document.getElementById("play_button");
// // Event listener for the play/pause button
// playButton.addEventListener("click", function() {
//   if (video.paused == true) {
//     // Play the video
//     video.play();

//     // Update the button text to 'Pause'
//     playButton.innerHTML = "Pause";
//   } else {
//     // Pause the video
//     video.pause();

//     // Update the button text to 'Play'
//     playButton.innerHTML = "Play";
//   }
// });
// https://developers.google.com/youtube/iframe_api_reference

// global variable for the player
var player;

// this function gets called when API is ready to use
function onYouTubePlayerAPIReady() {
  // create the global player from the specific iframe (#video)
  var link = document.getElementById("video").src
  document.getElementById("video").src = link + "?enablejsapi=1&html5=1" ;


  player = new YT.Player('video', {
    events: {
      // call this function when player is ready to use
      'onReady': onPlayerReady
    }
  });
}

function onPlayerReady(event) {
  
  // bind events
  var playButton = document.getElementById("play-button");
  playButton.addEventListener("click", function() {
	$('.canhcam-rh-2 .video').addClass('visible');
	player.playVideo();
	
  });
  

  
}

// Inject YouTube API script
if($('#video').length > 0){
var tag = document.createElement('script');
tag.src = "//www.youtube.com/player_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
}
