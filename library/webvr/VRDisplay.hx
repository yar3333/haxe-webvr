package webvr;

extern class VRDisplay extends js.html.EventTarget
{
	/**
	 * Dictionary of capabilities describing the VRDisplay.
	 */
	var capabilities(default, null) : VRDisplayCapabilities;
	/**
	 * z-depth defining the far plane of the eye view frustum
	 * enables mapping of values in the render target depth
	 * attachment to scene coordinates. Initially set to 10000.0.
	 */
	var depthFar : Float;
	/**
	 * z-depth defining the near plane of the eye view frustum
	 * enables mapping of values in the render target depth
	 * attachment to scene coordinates. Initially set to 0.01.
	 */
	var depthNear : Float;
	/**
	 * An identifier for this distinct VRDisplay. Used as an
	 * association point in the Gamepad API.
	 */
	var displayId(default, null) : Int;
	/**
	 * A display name, a user-readable name identifying it.
	 */
	var displayName(default, null) : String;
	var isConnected(default, null) : Bool;
	var isPresenting(default, null) : Bool;
	/**
	 * If this VRDisplay supports room-scale experiences, the optional
	 * stage attribute contains details on the room-scale parameters.
	 */
	var stageParameters(default, null) : VRStageParameters;

	/**
	 * Passing the value returned by `requestAnimationFrame` to
	 * `cancelAnimationFrame` will unregister the callback.
	 */
	function cancelAnimationFrame(handle:Float) : Void;
	/**
	 * Stops presenting to the VRDisplay.
	 */
	function exitPresent() : js.Promise<Void>;
	/**
	   @param	whichEye "left" | "right";
	**/
	function getEyeParameters(whichEye:String) : VREyeParameters;
	/**
	 * Populates the passed VRFrameData with the information required to render
	 * the current frame.
	 */
	function getFrameData(frameData:VRFrameData) : Bool;
	/**
	 * Get the layers currently being presented.
	 */
	function getLayers() : Array<VRLayer>;
	/**
	 * @deprecated
	 * Return a VRPose containing the future predicted pose of the VRDisplay
	 * when the current frame will be presented. The value returned will not
	 * change until JavaScript has returned control to the browser.
	 * 
	 * The VRPose will contain the position, orientation, velocity,
	 * and acceleration of each of these properties.
	 */
	function getPose() : VRPose;
	/**
	 * Return the current instantaneous pose of the VRDisplay, with no
	 * prediction applied.
	 */
	function getImmediatePose() : VRPose;
	/**
	 * The callback passed to `requestAnimationFrame` will be called
	 * any time a new frame should be rendered. When the VRDisplay is
	 * presenting the callback will be called at the native refresh
	 * rate of the HMD. When not presenting this function acts
	 * identically to how window.requestAnimationFrame acts. Content should
	 * make no assumptions of frame rate or vsync behavior as the HMD runs
	 * asynchronously from other displays and at differing refresh rates.
	 */
	function requestAnimationFrame(callback:haxe.Constraints.Function) : Float;
	/**
	 * Begin presenting to the VRDisplay. Must be called in response to a user gesture.
	 * Repeat calls while already presenting will update the VRLayers being displayed.
	 */
	function requestPresent(layers:Array<VRLayer>) : js.Promise<Void>;
	/**
	 * Reset the pose for this display, treating its current position and
	 * orientation as the "origin/zero" values. VRPose.position,
	 * VRPose.orientation, and VRStageParameters.sittingToStandingTransform may be
	 * updated when calling resetPose(). This should be called in only
	 * sitting-space experiences.
	 */
	function resetPose() : Void;
	/**
	 * The VRLayer provided to the VRDisplay will be captured and presented
	 * in the HMD. Calling this function has the same effect on the source
	 * canvas as any other operation that uses its source image, and canvases
	 * created without preserveDrawingBuffer set to true will be cleared.
	 */
	function submitFrame(?pose:VRPose) : Void;
}