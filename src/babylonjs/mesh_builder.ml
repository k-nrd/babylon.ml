type t
type sphere
type sphere_definition = { diameter : float; segments : int }

external mesh_builder : t = "MeshBuilder" [@@mel.module "babylonjs"]

external raw_create_sphere :
  t -> string -> sphere_definition -> Scene.t -> sphere = "CreateSphere"
[@@mel.send]

let create_sphere sphere_name sphere_defn scene =
  raw_create_sphere mesh_builder sphere_name sphere_defn scene

external position : sphere -> Vec3.t = "position" [@@mel.get]
external set_position : sphere -> Vec3.t -> unit = "position" [@@mel.set]
