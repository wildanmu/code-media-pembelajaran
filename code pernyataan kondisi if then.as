var someNumber:Number = 5;
someCaller();
someCallee();
function someCallee(){
     if(arguments.caller == someCaller){
          someNumber++;
          trace("No, *I* get to say that Hello World line!");
          arguments.caller();
     }
}
function someCaller(){
     trace("Hello world!");
     if(someNumber == 5){
          someCallee();
     }
}
