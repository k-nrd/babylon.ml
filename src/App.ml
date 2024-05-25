open Webapi
open Babylonjs

let () =
  let canvas = Document.get_element_by_id "renderCanvas" |> Option.get in
  let engine = Engine.create canvas in
  let listener _evt = Engine.resize engine in
  Window.add_event_listener "resize" listener;
  let scene = Scene.create engine in
  let scene_defn () =
    let camera =
      Free_camera.create "camera1" (Vec3.create 0.0 5.0 (-10.0)) scene
    in
    Free_camera.set_target camera (Vec3.create 0. 0. 0.);
    Free_camera.attach_control camera canvas true;
    let light =
      Light.create_hemispheric_light "light" (Vec3.create 0. 1. 0.) scene
    in
    Light.set_intensity light 0.7;
    let sphere =
      Mesh_builder.create_sphere "sphere" { diameter = 2.; segments = 32 } scene
    in
    Mesh_builder.set_position sphere (Vec3.create 0. 2. 0.);
    ()
  in
  Scene.register_before_render scene scene_defn;
  Engine.run_render_loop engine (fun () -> Scene.render scene)
