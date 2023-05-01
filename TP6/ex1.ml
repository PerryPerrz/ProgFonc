(*IOPETI Hugo TP Prog Fonc 15/03/2022*)

(*1*)
type int_tree = Feuille of int | Noeud of int_tree * int_tree

(*2*)
let rec tree_mem n a =
  match a with
  | Feuille x -> if x == n then true else false
  | Noeud (fg, fd) -> tree_mem n fg || tree_mem n fd

(*3*)
exception Trouvee

let tree_mem2 n a =
  try
    let rec aux n a =
      match a with
      | Feuille x -> if x == n then raise Trouvee else false
      | Noeud (fg, fd) -> aux n fg || aux n fg
    in
    aux n a
  with Trouvee -> true

(*4*)
let rec create_tree n =
  if n == 0 then Feuille 0 else Noeud (create_tree (n / 2), create_tree (n / 2))

let t = create_tree 1000000

let time f n a =
  let start = Sys.time () in
  let res = f n a in
  let stop = Sys.time () in
  let () = Printf.printf "Execution time: %fs\n%!" (stop -. start) in
  res

(*
Test avec la permière fonction :

  time tree_mem 0 t;;
  Execution time: 0.000004s
  - : bool = true

  time tree_mem 10 t;;
  Execution time: 0.075212s
  - : bool = false

Test avec la seconde fonction : 

  time tree_mem2 0 t;;
  Execution time: 0.000011s
  - : bool = true

  time tree_mem2 10 t;;
  Execution time: 0.070419s
  - : bool = false

  Le temps d'exécution s'équivaut pour les 2 fonctions lorsqu'ils ne trouvent rien (les 2 parcourt tout l'arbre), par contre, lorsqu'il trouve la valeur, la première fonction est nettement plus rapide. Si l'arbre contiendrait autre chose que des zéros, la fonction avec des exceptions serait meilleure. 
*)
