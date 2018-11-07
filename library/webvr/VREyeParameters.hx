package webvr;

@:native("VREyeParameters")
extern class VREyeParameters
{
	/**
	 * @deprecated 
	 */
	var fieldOfView(default, null) : VRFieldOfView;
	var offset(default, null) : js.html.Float32Array;
	var renderHeight(default, null) : Float;
	var renderWidth(default, null) : Float;
}