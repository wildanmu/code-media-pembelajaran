stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;

// 4. action tombol menu pengukuran 
pengukuran_btn.addEventListener(MouseEvent.CLICK, panggilPengukuran);
function panggilPengukuran(e:MouseEvent):void {
	gotoAndPlay(1, "pengukuran");
}

//action memanggil pengukuran.swf
stop();
import flash.display.Loader;
SoundMixer.stopAll();

	//set variabel untuk memanggil menu pengukuran
	var muatPengukuran:Loader = new Loader();
	var muatPengkrn:URLRequest = new URLRequest();

			//set path atau lokasi folder movie yang akan dipanggil
			muatPengukuran.load(new URLRequest("_KOMPILER/pengukuran.swf"));
			addChild(muatPengukuran);
			
			//posisi kedudukan pada stage atau layar
			x = 0; //posisi movie di kordinat x 0 
			y = 0; //posisi movie di kordinat y 0