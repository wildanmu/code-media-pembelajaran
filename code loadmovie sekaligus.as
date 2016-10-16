

    var _swfLoader:Loader;
    var _swfContent:MovieClip;
     
    loadSWF("01.swf");
     
    function loadSWF(path:String):void {
       var _req:URLRequest = new URLRequest();
       _req.url = path;
     
       _swfLoader = new Loader();
       setupListeners(_swfLoader.contentLoaderInfo);
     
       _swfLoader.load(_req);
    }
     
    function setupListeners(dispatcher:IEventDispatcher):void {
       dispatcher.addEventListener(Event.COMPLETE, addSWF);
       dispatcher.addEventListener(ProgressEvent.PROGRESS, preloadSWF);
    }
     
    function preloadSWF(event:ProgressEvent):void {
       var _perc:int = (event.bytesLoaded / event.bytesTotal) * 100;
       // swfPreloader.percentTF.text = _perc + "%";
    }
     
    function addSWF(event:Event):void {
       event.target.removeEventListener(Event.COMPLETE, addSWF);
       event.target.removeEventListener(ProgressEvent.PROGRESS, preloadSWF);
     
       _swfContent = event.target.content;
       _swfContent.addEventListener("close", unloadSWF);
     
       addChild(_swfContent);
    }
     
    function unloadSWF(event:Event):void {
       _swfLoader.unloadAndStop();
     
    removeChild(_swfContent);
       _swfContent = null;
    }

