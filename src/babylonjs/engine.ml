type t

external create : Dom.element -> t = "Engine"
[@@mel.new] [@@mel.module "babylonjs"]

external resize : t -> unit = "resize" [@@mel.send]

external run_render_loop : t -> (unit -> unit) -> unit = "runRenderLoop"
[@@mel.send]
