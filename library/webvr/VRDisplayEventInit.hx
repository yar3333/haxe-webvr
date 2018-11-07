package webvr;

typedef VRDisplayEventInit =
{>js.html.EventInit,

	var display : VRDisplay;
	/**
	   "mounted" | "navigation" | "requested" | "unmounted"
	**/
	@:optional var reason : String;
}