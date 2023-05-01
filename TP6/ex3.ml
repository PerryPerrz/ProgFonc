(*IOPETI Hugo TP Prog Fonc 15/03/2022*)

(*1*)
let bind r f = match r with 
| Error _ -> r
| Ok v -> f v;;

(*Merci à la documention Ocaml*)