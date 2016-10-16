stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;


//action event tombol menu utama
// 1. action tombol menu petunjuk
petunjuk_btn.addEventListener(MouseEvent.CLICK, panggilPetunjuk);
	function panggilPetunjuk(e:MouseEvent):void {
    	gotoAndPlay(1, "petunjuk");
}


// 2. action tombol menu pengenalan pesawat
pengenalan_btn.addEventListener(MouseEvent.CLICK, panggilPengenalan);
	function panggilPengenalan(e:MouseEvent):void {
		gotoAndPlay(1, "pengenalan");
}
	

// 3. action tombol menu uji bacaan 
uji_btn.addEventListener(MouseEvent.CLICK, panggilUji);
	function panggilUji(e:MouseEvent):void {
		gotoAndPlay(1, "uji bacaan");
}	

	
// 4. action tombol menu pengukuran 
pengukuran_btn.addEventListener(MouseEvent.CLICK, panggilPengukuran);
	function panggilPengukuran(e:MouseEvent):void {
		gotoAndPlay(1, "pengukuran");
}


//5. action tombol profil
profil_btn.addEventListener(MouseEvent.CLICK, panggilProfil);
	function panggilProfil(e:MouseEvent):void {
			
		var muat:dialogProfil;
	
			muat = new dialogProfil();
				addChild(muat);
				muat.x = 501;
				muat.y = 316;
}


//6. action tombol keluar dari aplikasi 
keluar_btn.addEventListener(MouseEvent.CLICK, keluar);
	function keluar(e:MouseEvent):void {
			
		var tampilkan:dialogKeluar;
	
			tampilkan = new dialogKeluar();
				addChild(tampilkan);
				tampilkan.x = 501;
				tampilkan.y = 316;
}


//action tombol layar penuh atau layar normal
fs_btn.useHandCursor = false;
fs_btn.addEventListener(MouseEvent.CLICK, layarpenuh);
	function layarpenuh(e:MouseEvent):void {
		//apabila tombol diklik, maka kondisi stage dari normal menjadi layar penuh
		if (stage.displayState == StageDisplayState.NORMAL) {
			stage.displayState = StageDisplayState.FULL_SCREEN;
		
	} else {
		//jika tidak, maka kondisi stage kembali Normal
			stage.displayState = StageDisplayState.NORMAL;
	}
	
}

//action tombol redam_btn
	var mute:Boolean = false;
	var musik:Flasound;
	var putar:SoundChannel;
		musik = new Flasound();
		putar = musik.play(0,5);	

mute_btn.useHandCursor = false;
mute_btn.addEventListener(MouseEvent.CLICK, suara)
function suara(event:MouseEvent){
	
		var s:SoundTransform = new SoundTransform();

	if (mute)
	{
		s.volume = 0;
		
	}
		else
	{
		s.volume = 1;
		
	}

	SoundMixer.soundTransform = s;
	mute = ! mute;
}