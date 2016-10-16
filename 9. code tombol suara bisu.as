stop();
import flash.events.MouseEvent;
import flash.display.Loader;
import flash.media.Sound;
import flash.display.MovieClip;

//action tombol suara bisu / mute
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