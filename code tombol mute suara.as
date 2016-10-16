//action tombol suara
mute_btn.useHandCursor = false; //action menyatakan pointer hand non aktif

	//menentukan variabel
	var soundOn:Boolean = false;
	//fungsi tombol mute_btn ketika diklik 
	var soundOn:Boolean = false;

	mute_btn.onRelease = function(){
		if (soundOn = !soundOn){
		music_mc.stop();
	
	}else{
		
		music_mc.play();
	}
}