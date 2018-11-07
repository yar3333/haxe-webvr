package webvr;

@:native("navigator")
extern class Navigator
{
	var activeVRDisplays(default, null) : Array<VRDisplay>;

	function getVRDisplays() : js.Promise<Array<VRDisplay>>;
}