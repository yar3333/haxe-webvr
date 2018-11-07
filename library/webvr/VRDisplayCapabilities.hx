package webvr;

@:native("VRDisplayCapabilities")
extern class VRDisplayCapabilities
{
	var canPresent(default, null) : Bool;
	var hasExternalDisplay(default, null) : Bool;
	var hasOrientation(default, null) : Bool;
	var hasPosition(default, null) : Bool;
	var maxLayers(default, null) : Int;
}