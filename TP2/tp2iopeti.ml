(*IOPETI Hugo TP Prog Fonc 01/02/2022*)

(*Exercice 1 : 

1. Le type de cette fonction avg est int -> int -> int 
2. L'expression avg 2 est l'appel de la fonction avg avec l'entier 2 en argument. Elle fait donc (2 + 2) / 2, le résultat étant 2.
    Le type est int -> int
3. Le type de la fonction avg_bis est int * int -> int

Exercice 2 : 

1.
*)
let curry f = fun a -> fun b -> f (a,b);;

(*2*)
let decurry f = fun (a,b) -> f a b;;

(* Exercice 4 : *)
(*1*)

let rec mylength liste = match liste with
|   [] -> 0 (*Fin de la liste donc on renvoie 0*)
|   x::resteListe -> 1 + (mylength resteListe);; (*x correspond à l'élement parcourut que l'on enlève de la liste et resteListe correspond à la liste sans cet élement*)

(* Pour tester mylength : 
let l = 0::1::[];;
mylength l;;
- : int = 2
*)

(*2*)

let myhd liste = match liste with
|   [] -> 0
|   x::resteListe -> x;;

(* Pour tester myhd : 
myhd l;;
- : int = 0
*)

(*3*)
let myhd2 liste = match liste with
| [] -> None
| x::resteListe -> Some x;;

(* Pour tester myhd2 :

Avec une autre liste : 

let l2 = 3::6::[];;
myhd2 l2;;
- : int option = Some 3

Avec une liste vide : 
let l3 = [];;
myhd2 l3;;
- : 'a option = None
*)

(*4*)
let myhd3 liste = match liste with
| [] -> failwith "Attention, la liste est vide !"
| x::resteListe -> x;;

(* Pour tester myhd4 :

myhd3 l2;;
- : int = 3

Avec une liste vide : 
myhd3 l3;;
Exception: Failure "Attention, la liste est vide !".
*)

(*5*)
let mytl liste = match liste with
| [] -> []
| x::resteListe -> resteListe;;

(* Pour tester mytl :

mytl l2;;
- : int list = [6]
let l3 = [];;
Avec une liste vide : 
mytl l3;;
- : 'a list = []
*)

(*6*)
let mytl2 liste = match liste with
| [] -> None;
| x::resteListe -> Some resteListe;;

(* Pour tester mytl2 :

mytl2 l2;;
- : int list option = Some [6]

Avec une liste vide : 
mytl2 l3;;
- : 'a list option = None
*)

(*7*)
let mytl3 liste = match liste with
| [] -> failwith "Attention, la liste est vide !"
| x::resteListe -> resteListe;;

(* Pour tester mytl3 :

mytl3 l2;;
- : int list = [6]

Avec une liste vide : 
mytl3 l3;;
Exception: Failure "Attention, la liste est vide !".
*)

(*8*)
let rec myappend liste1 liste2 = match liste1 with
| [] -> liste2
| x::resteListe1 -> x::(myappend resteListe1 liste2);;

(* Pour tester myappend :

myappend l l2;;
- : int list = [0; 1; 3; 6]

Avec une liste vide : 
myappend l3 l2;;
- : int list = [3; 6]

Avec une liste vide : 
myappend l2 l3;;
- : int list = [3; 6]

Avec deux listes vides : 
myappend l3 l3;;
- : 'a list = []
*)

(*9*)
let rec mynth liste n = match liste with
| [] -> failwith "N-ieme element introuvable!"
| x::resteListe -> if n == 0 then x else mynth resteListe (n-1);;

(* Pour tester mynth :

mynth l2 0;;
- : int = 3

Avec une liste vide : 
mynth l3 1;;
Exception: Failure "N-ieme element introuvable!".

Avec un indice supérieur au nombre d'élements dans la liste: 
mynth l2 3;;
Exception: Failure "N-ieme element introuvable!".
*)

(*10*)
let rec myrev liste =
    let rec foaux accu liste = match liste with
    | [] -> accu
    | x::resteListe -> foaux(x::accu) resteListe
    in foaux [] liste;;

(* Pour tester myrev :
myrev l2;;
- : int list = [6; 3]

Avec une liste vide : 
mynth l3;;
- : 'a list = []