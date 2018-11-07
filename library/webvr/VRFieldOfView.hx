package webvr;

@:native("VRFieldOfView")
extern class VRFieldOfView
{
	var downDegrees(default, null) : Float;
	var leftDegrees(default, null) : Float;
	var rightDegrees(default, null) : Float;
	var upDegrees(default, null) : Float;
}