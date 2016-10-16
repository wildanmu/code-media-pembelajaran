stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;

//6. action tombol keluar dari aplikasi 
keluar_btn.addEventListener(MouseEvent.CLICK, keluar);

function keluar(e:MouseEvent):void {
			
		var tampilkan:dialogKeluar;
	
		tampilkan = new dialogKeluar();
		
		addChild(tampilkan);
		
		tampilkan.x = 501;
		
		tampilkan.y = 316;
		
}