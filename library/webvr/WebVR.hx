package webvr;

@:native("window")
extern class WebVR
{
	var onvrdisplayactivate : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplayblur : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplayconnect : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplaydeactivate : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplaydisconnect : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplayfocus : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplaypointerrestricted : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplaypointerunrestricted : (js.html.Window->js.html.Event->Dynamic);
	var onvrdisplaypresentchange : (js.html.Window->js.html.Event->Dynamic);
	
	private function addEventListener(type:String, listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void Browser.window.addEventListener("vrdisplayactivate", listener, useCapture);

	inline function addEventListener_vrdisplayactivate(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplayactivate", listener, useCapture);
	inline function addEventListener_vrdisplayblur(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplayblur", listener, useCapture);
	inline function addEventListener_vrdisplayconnect(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplayconnect", listener, useCapture);
	inline function addEventListener_vrdisplaydeactivate(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplaydeactivate", listener, useCapture);
	inline function addEventListener_vrdisplaydisconnect(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplaydisconnect", listener, useCapture);
	inline function addEventListener_vrdisplayfocus(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplayfocus", listener, useCapture);
	inline function addEventListener_vrdisplaypointerrestricted(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplaypointerrestricted", listener, useCapture);
	inline function addEventListener_vrdisplaypointerunrestricted(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplaypointerunrestricted", listener, useCapture);
	inline function addEventListener_vrdisplaypresentchange(listener:js.html.Window->js.html.Event->Dynamic, ?useCapture:Bool) : Void addEventListener("vrdisplaypresentchange", listener, useCapture);
}