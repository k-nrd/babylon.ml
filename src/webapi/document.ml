type t

external document : t = "document"

external raw_get_element_by_id : t -> string -> Dom.element option
  = "getElementById"
[@@mel.send] [@@mel.return nullable]

let get_element_by_id elt_id = raw_get_element_by_id document elt_id
