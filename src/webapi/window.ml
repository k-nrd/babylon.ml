type t

external window : t = "window"
external console : t -> Console.t = "console" [@@mel.get]

external raw_add_event_listener : t -> string -> (Event.t -> unit) -> unit
  = "addEventListener"
[@@mel.send]

let add_event_listener evt_name evt_callback =
  raw_add_event_listener window evt_name evt_callback
