(* Reference:
   https://jeffas.io/2020/04/15/ocaml-state-machines/
*)

(** Example state machine

 +-[0]-+          +-[1]-+
 |     |          |     |
 +----->A---[1]-->B<----+
       /\         |
        |         |
        +---[0]---+
---
 From/To    A      B
    A       0      1
    B       0      1

*)

type state = A | B
type input = Zero | One

(* functional attemps *)
let zero = function A | B -> A
let one = function A | B -> B
(*let input_to_function = function Zero -> zero | One -> one*)
let transition_state s = function Zero -> zero s | One -> one s
let state_to_string = function A -> "A" | B -> "B"

let () =
  let initial_state = A in
  let final_state = List.fold_left transition_state initial_state [Zero; One; Zero; One;] in
  Printf.printf "Initial state: %s\nFinal state: %s\n"
    (state_to_string initial_state) (state_to_string final_state)

(** Result:
  Initial state: A
  Final state: B
*)
