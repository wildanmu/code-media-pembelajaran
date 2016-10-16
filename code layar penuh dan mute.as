//script tombol
//tombol action mute dan unmute suara
instrumen = new Sound();
instrumen.start(0.00);

mute_btn.useHandCursor = false; //action menyatakan pointer hand non aktif
muted = false;
mute_btn.onRelease = function(){
	
	if(muted == false){
		instrumen.setVolume(0);
		muted = true;
		
	}else{
		
		instrumen.setVolume(60);
		muted = false;
	}
}

	//tombol action jika kita mau pilih layar normal atau layarpenuh
	//action menyatakan pointer hand non aktif
	fs_btn.useHandCursor = false; 
	fs_btn.onRelease = function() {
	
	//action untuk kembali ke normal dari posisi stage layarpenuh
	if (Stage.displayState == "normal") {
		
		//action untuk layarpenuh dari poisi stage normal
		Stage.displayState = "fullscreen";
	
	} else {
		
		//stage pada kondisi layar normal atau layarpenuh dari keduanya
		Stage.displayState = "normal";
	}
}

//disable hand button
blueButton.useHandCursor = false;
