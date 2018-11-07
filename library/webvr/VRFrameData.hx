package webvr;

@:native("VRFrameData")
extern class VRFrameData
{
	var leftProjectionMatrix(default, null) : js.html.Float32Array;
	var leftViewMatrix(default, null) : js.html.Float32Array;
	var pose(default, null) : VRPose;
	var rightProjectionMatrix(default, null) : js.html.Float32Array;
	var rightViewMatrix(default, null) : js.html.Float32Array;
	var timestamp(default, null) : Float;
}