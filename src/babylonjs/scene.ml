type t

external create : Engine.t -> t = "Scene" [@@mel.new] [@@mel.module "babylonjs"]
external render : t -> unit = "render" [@@mel.send]

external register_before_render : t -> (unit -> unit) -> unit
  = "registerBeforeRender"
[@@mel.send]
