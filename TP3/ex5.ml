(*IOPETI Hugo TP Prog Fonc 08/02/2022*)

(*Exercice 5*)
(*1*)
let vraimin l = if l == [] then failwith "Attention, la liste ne doit pas être vide!" else List.fold_left(fun accu y -> if y > accu then accu else y) (List.hd l) l;; (*on init l'accu avec la première valeur de la liste*)
(*accu = résultat de l'opération précedente, y = valeur parcourut actuellement*)

(* Pour tester 

let l14 = -5::6::-6::[];;
val l14 : int list = [-5; 6; -6]

vraimin l14;;
- : int = -6

let l14 = -6::[];;
val l14 : int list = [-6]

vraimin l14;;
- : int = -6

let l2 = [];;
vraimin l2;;
Exception: Failure "Attention, la liste ne doit pas être vide!".
*)

(*2*)
let rec delete_list n l = match l with
| [] -> failwith "Attention, la liste ne doit pas être vide !"
| x::resteListe -> if x == n then resteListe else x::delete_list n resteListe;;

(* Pour tester : 

let l1 = 0::1::2::3::4::5::5::[];;
let l2 = [];;

delete_list 0 l1;;
- : int list = [1; 2; 3; 4; 5; 5]

delete_list 1 l1;;
- : int list = [0; 2; 3; 4; 5; 5]

delete_list 5 l1;;
- : int list = [0; 1; 2; 3; 4; 5]

delete_list 1 l2;;
Exception: Failure "Attention, la liste ne doit pas être vide !".
*)

(*3*)
let ssort l = unfold (fun l2 -> if l2 == [] then None else Some(vraimin l2, delete_list (vraimin l2) l2)) l;;

(* J'envoie à unfold la fonction anonyme que unfold va appliquer à chaque étape. Elle prend une liste (l2) si elle est vide, j'arrête de construire la liste trié sinon je rajoute le minimum de la liste l2 dans la liste triée et j'enlève ce même minimum dans la liste l2. l correspond à la valeur de l2 à la première étape*)
(* None et Some car dans unfold les cas sont appliqués lorsque c'est un None est un Some)

(* Pour tester 

let l8 = 6::4::-4::0::19::8::1::-2::0::[];;
val l8 : int list = [6; 4; -4; 0; 19; 8; 1; -2; 0]

ssort l8;;
- : int list = [-4; -2; 0; 0; 1; 4; 6; 8; 19]

let l2 = [];;

ssort l2;;
- : 'a list = []
*)