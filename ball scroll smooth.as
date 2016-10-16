/*
ActionScript 3 tutorial by Dan Gries

http://www.flashandmath.com/

Last modified March 21, 2010.
*/

var slider1Param:Number;
var slider2Param:Number;
var responsiveness:Number;

////////

init();

////////

function init():void {
	
	//The responsiveness should be set to a value between 0 and 1.
	//I find that something between 0.1 and 0.5 looks the best.
	responsiveness = 0.1;
	
	slider1.value = 0;
	slider1Param = slider1.value;
	slider2.value = 0;
	slider2Param = slider2.value;
	
	ball1.x = 50 + slider1.value;
	
	this.addEventListener(Event.ENTER_FRAME, onEnter);
}

function onEnter(evt:Event):void {
	slider1Param += responsiveness*(slider1.value - slider1Param);
	
	ball1.x = 50 + slider1Param;
	
	ball2.x = 50+slider2.value;
}