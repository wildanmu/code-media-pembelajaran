stop();

//actionscript tombol-tombol menu 
// 1. action tombol menu petunjuk
petunjuk_btn.useHandCursor = false;
petunjuk_btn.onRelease = function() {
	
	loadMovieNum("_KOMPILER/petunjuk.swf",0);
	
}


// 2. action tombol menu pengenalan alat
pengenalan_btn.useHandCursor = false;
pengenalan_btn.onRelease = function() {
	
	loadMovieNum("_KOMPILER/pengenalan.swf",0);
	
}


// 3. action tombol menu pengukuran
pengukuran_btn.useHandCursor = false;
pengukuran_btn.onRelease = function() {
	
	loadMovieNum("_KOMPILER/pengukuran.swf",0);
	
}


// 4. action tombol menu uji coba perhitungan
uji_btn.useHandCursor = false;
uji_btn.onRelease = function() {
	
	loadMovieNum("_KOMPILER/uji-coba.swf",0);
	
}


// 5. action tombol menu profil
profil_btn.useHandCursor = false;
profil_btn.onRelease = function() {
	
	gotoAndStop("profil");
	
}

// 6. action tombol menu profil
exit_btn.useHandCursor = false;
exit_btn.onRelease = function() {
	
	gotoAndStop("keluar");
	
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