import flash.events.MouseEvent;
import flash.display.SimpleButton;

panggil_btn.addEventListener(MouseEvent.CLICK, muat);
function muat(e:MouseEvent):void {

	var tombol = panggil_btn;
	var popUp:panggil;
	
	popUp = new panggil();
	addChild(popUp);
	popUp.x = 400;
	popUp.y = 300;
}