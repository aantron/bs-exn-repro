module Raises_in_this_file =
struct
  let do_it () = raise (Invalid_argument "foo")
end

let () =
  (* Raise in this file. *)
  begin
    try Raises_in_this_file.do_it ()
    with Invalid_argument _ -> prerr_endline "caught"
  end;

  (* Raise in another file in this package. *)
  begin
    try Raises_in_this_package.do_it ()
    with Invalid_argument _ -> prerr_endline "caught"
  end;

  (* Raise in a sibling package from this repo. *)
  begin
    try Raises.do_it ()
    with Invalid_argument _ -> prerr_endline "caught"
  end
