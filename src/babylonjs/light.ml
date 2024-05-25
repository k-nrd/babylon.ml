type t

external create_hemispheric_light : string -> Vec3.t -> Scene.t -> t
  = "HemisphericLight"
[@@mel.new] [@@mel.module "babylonjs"]

external set_intensity : t -> float -> unit = "set_intensity" [@@mel.set]
