package webvr;

extern interface VRStageParameters
{
	@:optional var sittingToStandingTransform : js.html.Float32Array;
	@:optional var sizeX : Float;
	@:optional var sizeY : Float;
}