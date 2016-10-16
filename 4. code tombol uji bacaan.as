stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;
				
// 3. action tombol menu uji bacaan 
uji_btn.addEventListener(MouseEvent.CLICK, panggilUji);
function panggilUji(e:MouseEvent):void {
	gotoAndPlay(1, "uji bacaan");
}				
	
//action memanggil ujibacaan.swf
stop();
import flash.display.Loader;
SoundMixer.stopAll();


	//set variabel untuk memanggil menu uji bacaan
	var muatUjibacaan:Loader = new Loader();
	var muatUji:URLRequest = new URLRequest();

			//set path atau lokasi folder movie yang akan dipanggil
			muatUjibacaan.load(new URLRequest("_KOMPILER/uji bacaan.swf"));
			addChild(muatUjibacaan);
			
			//posisi kedudukan pada stage atau layar
			x = 0; //posisi movie di kordinat x 0 
			y = 0; //posisi movie di kordinat y 0