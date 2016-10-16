stop(); // stop
											 
this.onEnterFrame = function(){
	if(mundur == true){   //pernyataan kondisi
		prevFrame();      //jika masuk pada frame pertama, maka posisi tetap pada frame pertama
	}
}

this.onRollOver = function(){
	mundur = false; //poisisi mouse event rollOver berada pada tombol
	play();    		//jika mouse berada pada tombol, maka frame berjalan maju
}

this.onRollOut = function(){ //posisi mouse event rollOut tidak berada dari tombol
	mundur = true;   	  //jika mouse tidak berada pada tombol, maka frame berjalan mundur/kembali
}

