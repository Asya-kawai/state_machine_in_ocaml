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

(* variants *)
type state = A | B
type input = Zero | One

(* transition: state -> input -> state = <fun> *)
let transition state input =
  match (state, input) with
  | (A, Zero) -> A
  | (A, One) -> B
  | (B, Zero) -> A
  | (B, One) -> B
