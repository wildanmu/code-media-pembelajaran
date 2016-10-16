/*
AIR for Mobile Flash tutorial by Barbara Kaskosz

http//www.flashandmath.com/

last modified December 10, 2011.

The app should be set in Portrait mode. The custom AS3 class
file InfoMobile.as must be in the same directory as this fla file.
*/

import flash.display.Bitmap;
import flash.display.BitmapData;	
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.MouseEvent;

import flash.events.TransformGestureEvent;
import flash.ui.Multitouch;
import flash.ui.MultitouchInputMode;

import fl.motion.MatrixTransformer;
import flash.geom.Matrix;
import flash.geom.Point;
	
stage.align = StageAlign.TOP_LEFT;

stage.scaleMode = StageScaleMode.NO_SCALE;

/*
We set Multitouch input mode to MultitouchInputMode.GESTURE,
so gesture events are recognized. You can check if and what gesture
events are supported on a given device using Multitouch.supportsGestureEvents
Boolean property, and get the list of supported gestures from
Multitouch.supportedGestures Vector.<String> property. 
We skip this check here. 
*/

Multitouch.inputMode = MultitouchInputMode.GESTURE;

//Our Bitmap image will be placed in a Sprite called 'container'. 

var container:Sprite=new Sprite();

this.addChild(container);

//We create an instance of our custom performance monitor 'InfoMobile'
//to display the frame rate and memmory consumption of our app at runtime.

var info:InfoMobile=new InfoMobile();

this.addChild(info);

//We place the MovieClips created on the stage in front of 'container'.

setChildIndex(mcPanel,numChildren-1);

setChildIndex(mcHelp,numChildren-1);

mcHelp.visible=false;

/*
We placed a jpeg in the Library and linked it to AS3 as BitmapData 
named 'Nancy'. Its dimesions are 1500 by 2000 pixels. 
*/

var bdWidth:Number=1500;

var bdHeight:Number=2000;

var bitmap:Bitmap;

//Within the function 'init' we add liteners to buttons.

init();

function init():void {
	
	mcPanel.btnExit.addEventListener(MouseEvent.CLICK, exitApp);
	
	mcPanel.btnStart.addEventListener(MouseEvent.CLICK,startRestart);
	
	mcPanel.btnHelp.addEventListener(MouseEvent.CLICK, showHelp);
}

/*
When the function 'startRestart' runs for the first time, we create
a Bitmap, bitmap, containing our BitmapData 'Nancy', scale it down,
so it fits on the stage, and add it as a child of 'container.
In the part that runs each time the button is tapped,
we add to 'container' listeners to GESTURE_ZOOM and GESTURE_PAN
if they are not there. (A listener to GESTURE_ZOOM
could have been removed by panning. See onPan.)
We reset the scale on position of 'container'. 
*/


function startRestart(e:MouseEvent):void {
	
	if(container.numChildren==0){
		
		var ratio:Number;
		
		bitmap=new Bitmap(new Nancy(bdWidth,bdHeight));
		
		container.addChild(bitmap);
		
	    ratio=Math.min(stage.stageHeight/bdHeight,stage.stageWidth/bdWidth);
	
	    ratio=Math.min(ratio,1);
			
	    bitmap.width = bdWidth * ratio;
				
	    bitmap.height = bdHeight * ratio;
	}
	
	if(!container.hasEventListener("gestureZoom")){
	   
	   container.addEventListener(TransformGestureEvent.GESTURE_ZOOM, onZoom);
	   
	   }
	   
	 if(!container.hasEventListener("gesturePan")){
	   
	   container.addEventListener(TransformGestureEvent.GESTURE_PAN, onPan);
	   
	   }
	 
	 container.x=0;
	 
	 container.y=0;
	 
	 container.scaleX=1;
	 
	 container.scaleY=1;
	
}

/*
Within the GESTURE_ZOOM handler, we make sure that 'container is not scaled more
than 600% or less than 80%. 

We use the MatrixTranformer class from the package fl.motion 
and its static method MatrixTransformer.matchInternalPointWithExternal
to keep the point on which we are zooming in its original place in relation to the stage.
That creates an impression of zooming about a point. We use TransformGestureEvent's 
properties localX, localY, stageX, stageY to remember the position of our zoom center
relative to 'container' and  to the stage so we can 
realign them after zooming using MatrixTransformer.
*/
		
function onZoom(event:TransformGestureEvent):void {
	
		var locX:Number=event.localX;

        var locY:Number=event.localY;
		
		var stX:Number=event.stageX;

        var stY:Number=event.stageY;
		
		var prevScaleX:Number=container.scaleX;
		
		var prevScaleY:Number=container.scaleY;
		
		var mat:Matrix;
		
		var externalPoint=new Point(stX,stY);
		
		var internalPoint=new Point(locX,locY);
		
		container.scaleX *= event.scaleX;
			
	    container.scaleY *= event.scaleY;
	
	     if(event.scaleX>1 && container.scaleX>6){
			 
			 container.scaleX=prevScaleX;
				
			 container.scaleY=prevScaleY;
			
		   }
		   
		 if(event.scaleY>1 && container.scaleY>6){
			 
			 container.scaleX=prevScaleX;
				
			 container.scaleY=prevScaleY;
			
		   } 
		   
		  if(event.scaleX<1 && container.scaleX<0.8){
			 
			 container.scaleX=prevScaleX;
				
			 container.scaleY=prevScaleY;
			
		   }
		   
		 if(event.scaleY<1 && container.scaleY<0.8){
			 
			 container.scaleX=prevScaleX;
				
			 container.scaleY=prevScaleY;
			
		   }  
		   
		 mat=container.transform.matrix.clone();
		 
		 MatrixTransformer.matchInternalPointWithExternal(mat,internalPoint,externalPoint);
		 
		 container.transform.matrix=mat;
		 
		}
		
/*
GESTURE_ZOOM and GESTURE_PAN events have phases. During GESTURE_PAN
BEGIN phase, we remove the listener to GESTURE_ZOOM to prevent
annoying zooming and panning at the sam time. We restore the listener in the END phase.
*/
		
		
function onPan(event:TransformGestureEvent):void {
	
	    if(event.phase==GesturePhase.BEGIN){
			  
			container.removeEventListener(TransformGestureEvent.GESTURE_ZOOM, onZoom);
			  
		  }
		  
	    var prevX:Number=container.x;
		
		var prevY:Number=container.y;
	
		container.x+=event.offsetX;
		
		container.y+=event.offsetY;
		
		if(event.offsetX>=0 && container.x > stage.stageWidth/2){
		
			container.x=prevX;
		}
		
		if(event.offsetX<0 && container.x < -container.width+stage.stageWidth/2){
		
			container.x=prevX;
		}
		
		if(event.offsetY>=0 && container.y > stage.stageHeight/2){
		
			container.y=prevY;
		}
		
		if(event.offsetY<0 && container.y < -container.height+stage.stageHeight/2){
		
			container.y=prevY;
		}
		
		 
		  if(event.phase==GesturePhase.END){
			 
			 container.addEventListener(TransformGestureEvent.GESTURE_ZOOM, onZoom);
		  }
		
			
		}
		
		
//When the user taps on Exit button, the app quits.
		
		
function exitApp(event:MouseEvent):void {
	
	NativeApplication.nativeApplication.exit(0);
}

//btnHelp shows the MovieClip with the description of the app.

function showHelp(e:MouseEvent):void {
	
	mcHelp.visible=true;
	
    container.visible=false;
	
	info.visible=false;
	
	mcHelp.addEventListener(MouseEvent.CLICK,hideHelp);
	
}

function hideHelp(e:MouseEvent):void {
	
	mcHelp.visible=false;
	
    container.visible=true;
	
	info.visible=true;
	
	mcHelp.removeEventListener(MouseEvent.CLICK,hideHelp);
	
}