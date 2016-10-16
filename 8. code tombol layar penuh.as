stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;

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