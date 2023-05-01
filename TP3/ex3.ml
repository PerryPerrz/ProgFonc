(*IOPETI Hugo TP Prog Fonc 08/02/2022*)

(*Exercice 3*)

(*1*)
type int_tree = Feuille of int | Noeud of (int_tree*int_tree);;

(*2*)
let rec left arbre = match arbre with
| Feuille x -> x
| Noeud (x,y) -> left x;;

(* Pour tester 
let arbre = Noeud (Feuille 4, Feuille 5);;
val arbre : int_tree = Noeud (Feuille 4, Feuille 5)

left arbre;;
- : int = 4
*)

(*3*)
let rec nb_nodes arbre = match arbre with 
| Feuille x -> 0
| Noeud (x,y) -> 1 + nb_nodes x + nb_nodes y;;

(* Pour tester 

nb_nodes arbre;;
- : int = 1
*)

(*4*)
let rec nb_leaves arbre = match arbre with
| Feuille x -> 1
| Noeud (x,y) -> nb_leaves x + nb_leaves y;;

(* Pour tester

 nb_leaves arbre;;
- : int = 2
*)

(*5*)
let rec depth_tree arbre = match arbre with
| Feuille x -> 1
| Noeud (x,y) -> 1 + if depth_tree x > depth_tree y then depth_tree x else depth_tree y;;

(* Pour tester 

depth_tree arbre;;
- : int = 2

let arbre2 = Noeud (Feuille 4, Noeud (Feuille 6,Feuille 8));;

depth_tree arbre2;;
- : int = 3
*)

(*6*)
let rec sum_tree arbre = match arbre with
| Feuille x -> x
| Noeud (x,y) -> sum_tree(x) + sum_tree(y);;

(* Pour tester

sum_tree arbre2;;
- : int = 18
*)

(*7*)
(* On parcourt l'arbre, les matchs sont identiques, on matchs chaque élements de l'arbre à chaque fois*)

(*8*) (*fold_tree = reduce pour les arbres, reduce à été fait pour les listes*)
(* g est la fonction qui prend un argument la récursivité de la fonction fold_tree sur le fils gauche et la récursivité de la fonction fold_tree appliqué sur le fils droit*)
let rec fold_tree (f,g) t = match t with 
| Feuille n -> f n
| Noeud(a,b) -> g (fold_tree (f,g) a) (fold_tree (f,g) b);;

(*9*)

(* left_fold est une fonction qui prend t (arbre) en argument et qui retourne l'application de la fonction fold_tree sur une paire de 2 fonctions et l'arbre t (de la fonction qui prend x et qui retourne x et une fonction qui prend a b et qui retourne a)*)
let left_fold = fun t -> fold_tree ((fun x -> x), (fun a b -> a)) t;; (*Si c'est une feuille ça retourne x si c'est un noeud ça reoturne le noeud de gauche (a)*)
(*fold_tree s'occupe déjà de la recursivité c'est pourquoi, fun a b -> a*)
let nb_nodes_fold = fun t -> fold_tree ((fun x -> 0), (fun a b -> 1 + a + b)) t;;

let nb_leaves_fold = fun t -> fold_tree ((fun x -> 1), (fun a b -> a + b)) t;;

let depth_tree_fold = fun t -> fold_tree ((fun x -> 1), (fun a b -> 1 + if a > b then a else b)) t;;

(*Pour tester

depth_tree_fold arbre;;
- : int = 2

depth_tree_fold arbre2;;
- : int = 3
*)

let sum_tree_fold = fun t -> fold_tree ((fun x -> x), (fun a b -> a + b)) t;;

(*10*)

(* Attention, Feuille x signifie que l'on appel le constru Feuille avec comme argument x, x étant la valeur de la feuille (int). Ici on ne veut pas retourner que x (sa valeur) mais toute la feuille (cf énoncé)*)
let rec swap_tree t = match t with
| Feuille x ->  Feuille x
| Noeud (a,b) -> Noeud (swap_tree b, swap_tree a);;

(* Pour tester

swap_tree arbre;;
- : int_tree = Noeud (Feuille 5, Feuille 4)

swap_tree arbre2;;
- : int_tree = Noeud (Noeud (Feuille 8, Feuille 6), Feuille 4)
*)

(* Réponse : 
Je pense que la fonction swap_tree peut être écrite sous la forme fun t -> fold_tree (f, g) t car elle à le même profil que les autres fonctions (match, type de paramètre, type de retour) que l'on à créée dans les exercices précedents. Je suppose que l'appel de constructeur ne va pas poser  de problèmes

Pour m'en assurer, j'ai fait et testé la fonction ci-dessous :
*)

let swap_tree_fold = fun t -> fold_tree ((fun x -> Feuille x), (fun a b -> Noeud (b,a))) t;;

(* Pour tester 

swap_tree_fold arbre;;
- : int_tree = Noeud (Feuille 5, Feuille 4)

swap_tree_fold arbre2;;
- : int_tree = Noeud (Noeud (Feuille 8, Feuille 6), Feuille 4)
*)