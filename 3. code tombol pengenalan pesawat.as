stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;


// 2. action tombol menu pengenalan pesawat
pengenalan_btn.addEventListener(MouseEvent.CLICK, panggilPengenalan);

function panggilPengenalan(e:MouseEvent):void {

	gotoAndPlay(1, "pengenalan");
	
}

//action memanggil pengenalan.swf
stop();
import flash.display.Loader;
SoundMixer.stopAll();

	//set variabel untuk memanggil menu pengenalan pesawat
	var muatPengenalan:Loader = new Loader();
	var muatPngnln:URLRequest = new URLRequest();

			//set path atau lokasi folder movie yang akan dipanggil
			muatPengenalan.load(new URLRequest("_KOMPILER/pengenalan.swf"));
			addChild(muatPengenalan);
			
			//posisi kedudukan pada stage atau layar
			x = 0; //posisi movie di kordinat x 0 
			y = 0; //posisi movie di kordinat y 0