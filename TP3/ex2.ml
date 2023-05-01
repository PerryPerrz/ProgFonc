(*IOPETI Hugo TP Prog Fonc 08/02/2022*)

(*Exercice 2 avec reduce/reduce2*)

let rec mylength liste = match liste with
|   [] -> 0 (*Fin de la liste donc on renvoie 0*)
|   x::resteListe -> 1 + (mylength resteListe);; (*x correspond à l'élement parcourut que l'on enlève de la liste et resteListe correspond à la liste sans cet élement*)

let mylength_reduce2 liste = List.fold_left (fun acc y -> 1 + acc) 0 liste;; (*A chaque itération, il applique l'opération à la première valeur de la liste, puis passe à la valeur suivante de la liste. *)

(*1 + acc : on incrémente l'accu, acc = valeur de l'opération précedente*)

(*2*)
let myhd liste = match liste with
|   [] -> 0
|   x::resteListe -> x;;

let myhd_reduce2 liste = List.fold_right (fun y acc -> y) liste 0;; (*Fold right retourne la première valeur, a contrario, left_right retourne la dernière*)

(* Penser à inverser l'ordre pour utiliser fold_right/fold_left*)

(*3*)
let myhd2 liste = match liste with
| [] -> None
| x::resteListe -> Some x;;

let myhd2_reduce2 liste = List.fold_right (fun y acc -> (Some y)) liste (Some 0);;

(*4*)
let myhd3 liste = match liste with
| [] -> failwith "Attention, la liste est vide !"
| x::resteListe -> x;;

let myhd3_reduce2 liste = List.fold_right (fun y acc -> y) liste failwith "Attention, la liste est vide !";;

(*5*)
let mytl liste = match liste with
| [] -> []
| x::resteListe -> resteListe;;

(*let mytl_reduce2 liste = List.fold_left (fun acc y -> y) [] liste;;*)

(* let l3 = 6::5::3::1::[];;*)

(*6*)
let mytl2 liste = match liste with
| [] -> None;
| x::resteListe -> Some resteListe;;

(*7*)
let mytl3 liste = match liste with
| [] -> failwith "Attention, la liste est vide !"
| x::resteListe -> resteListe;;

(*8*)
let rec myappend liste1 liste2 = match liste1 with
| [] -> liste2
| x::resteListe1 -> x::(myappend resteListe1 liste2);;

let myappend_reduce2 liste = List.fold_left myappend liste2 liste;;

(*9*)
let rec mynth liste n = match liste with
| [] -> failwith "N-ieme element introuvable!"
| x::resteListe -> if n == 0 then x else mynth resteListe (n-1);;

(*10*)
let rec myrev liste =
    let rec foaux accu liste = match liste with
    | [] -> accu
    | x::resteListe -> foaux(x::accu) resteListe
    in foaux [] liste;;