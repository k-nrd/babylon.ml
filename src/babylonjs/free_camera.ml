type t

external create : string -> Vec3.t -> Scene.t -> t = "FreeCamera"
[@@mel.new] [@@mel.module "babylonjs"]

external set_target : t -> Vec3.t -> unit = "setTarget" [@@mel.send]

external attach_control : t -> Dom.element -> bool -> unit = "attachControl"
[@@mel.send]
