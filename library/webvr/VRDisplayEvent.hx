package webvr;

extern class VRDisplayEvent extends js.html.Event
{
	var display(default, null) : VRDisplay;
	/**
	   "mounted" | "navigation" | "requested" | "unmounted"
	**/
	var reason(default, null) : String;
}