package webvr;

@:native("VRPose")
extern class VRPose
{
	var angularAcceleration(default, null) : js.html.Float32Array;
	var angularVelocity(default, null) : js.html.Float32Array;
	var linearAcceleration(default, null) : js.html.Float32Array;
	var linearVelocity(default, null) : js.html.Float32Array;
	var orientation(default, null) : js.html.Float32Array;
	var position(default, null) : js.html.Float32Array;
	var timestamp(default, null) : Float;
}