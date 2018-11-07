package webvr;

extern interface VRLayer
{
	@:optional var leftBounds : haxe.extern.EitherType<Array<Float>, js.html.Float32Array>;
	@:optional var rightBounds : haxe.extern.EitherType<Array<Float>, js.html.Float32Array>;
	@:optional var source : js.html.CanvasElement;
}