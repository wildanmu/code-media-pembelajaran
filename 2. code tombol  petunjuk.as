stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;

// 1. action tombol menu petunjuk
petunjuk_btn.addEventListener(MouseEvent.CLICK, panggilPetunjuk);

	function panggilPetunjuk(e:MouseEvent):void {
	
    	gotoAndPlay(1, "petunjuk");
	
}

//memanggil petunjuk.swf
stop();
import flash.display.Loader;
SoundMixer.stopAll();

	//set variabel untuk memanggil menu petunjuk
	var muatPetunjuk:Loader = new Loader();
	var muatPtnjk:URLRequest = new URLRequest();

			//set path atau lokasi folder movie yang akan dipanggil
			muatPetunjuk.load(new URLRequest("_KOMPILER/petunjuk.swf"));
			addChild(muatPetunjuk);
			
			//posisi kedudukan pada stage atau layar
			x = 0; //posisi movie di kordinat x 0 
			y = 0; //posisi movie di kordinat y 0