on (release) {
    _root.videoPlayer.loadMovie("Folder/Nama file.swf");

}

on(release) {
    _root.my_ns.unloadMovie();
    _root.my_ns.play("Folder/Nama file.swf");
}



on (release) { loadMovie ("home.swf", "shell"); 
this.enabled = false; 
stop (); }