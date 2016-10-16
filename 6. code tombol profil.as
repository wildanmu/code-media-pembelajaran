stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;

//5. action tombol profil
profil_btn.addEventListener(MouseEvent.CLICK, panggilProfil);

function panggilProfil(e:MouseEvent):void {
			
		var muat:dialogProfil;
	
		muat = new dialogProfil();
		
		addChild(muat);
		
		muat.x = 501;
		
		muat.y = 316;
		
}