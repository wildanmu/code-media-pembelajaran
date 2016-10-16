import flash.events.MouseEvent;
import flash.display.*;
import flash.net.URLRequest;

panggil_btn.addEventListener(MouseEvent.CLICK, loadSWF);
 function loadSWF (e:MouseEvent):void {


var request:URLRequest = new URLRequest("target.swf"); 
var loader:Loader = new Loader() 
loader.load(request); 
addChild(loader);

}


//action tombol panggil video waterpass
videoWaterpass_btn.useHandCursor = false;
videoWaterpass_btn.addEventListener(MouseEvent.CLICK, panggilVideoWaterpass);

	function panggilVideoWaterpass(e:MouseEvent):void {
		
	var request:URLRequest = new URLRequest("videowaterpass.swf"); 
	var vidwaterpass:Loader = new Loader() 
	vidwaterpass.load(request); 
	addChild(vidwaterpass);

}
	