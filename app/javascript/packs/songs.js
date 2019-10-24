function player() {

	const song_button = document.getElementById("song_button");
	if (!song_button)
		return; 
	
	song_button.addEventListener("click", playSong);
}

function playSong(event) {
	console.log(event.target)
	var sound = new Howl({
		src: [event.target.getAttribute("data-file")]
	});

	console.log("playing")
	sound.play();
}


document.addEventListener('turbolinks:load', player)