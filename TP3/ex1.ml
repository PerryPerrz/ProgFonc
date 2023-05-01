(*IOPETI Hugo TP Prog Fonc 08/02/2022*)

(*Exercice 1*)

let max_option x y =
if x = None then y
else if y = None then x
else if x > y then x else y;;

(*Pour tester max_option : 

max_option (Some 4) (Some 5);;
- : int option = Some 5

max_option (Some 4) None;;
- : int option = Some 4
*)

let rec max2 liste = match liste with
| [] -> None
| x::resteListe -> max_option x (max2 resteListe);;

(*Pour tester max2 : 

let l1 = (Some 0)::(Some 1)::(Some 2)::(Some 3)::[];;
let l2 = [];;

max2 l1;;
- : int option = Some 3

max2 l2;;
- : 'a option = None
*)

(*max2 avec reduce2*)

let max2reduce2 liste = List.fold_left max_option None liste;;

(* Pour tester max2reduce2

max2reduce2 l1;;
- : int option = Some 3

max2reduce2 l2;;
- : 'a option = None
*)

let vraimax liste = match liste with
| [] -> failwith "Attention, la liste est vide !"
| x::resteListe -> max_option x (max2 resteListe);;

(* Pour tester vraimax 

vraimax l1;;
- : int option = Some 3

vraimax l2;;
Exception: Failure "Attention, la liste est vide !".
*)