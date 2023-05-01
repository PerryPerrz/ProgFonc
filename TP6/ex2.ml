(*IOPETI Hugo TP Prog Fonc 15/03/2022*)

(*1*)
let rec tree_mem_boolean n a =
  let rec tree_mem n a =
    match a with
    | Feuille x -> if x == n then Error true else Ok false
    | Noeud (fg, fd) -> (
        match (tree_mem n fg, tree_mem n fd) with
        | _, Error x -> Error true
        | Error x, _ -> Error true
        | Ok x, Ok y -> Ok false)
  in
  match tree_mem n a with Error x -> x | Ok x -> x
(*Match servant unqiuement a afficher true et false au lieu de Error true et Ok false*)

(*2*)
(*
   Test avec la valeur 0 : (valeur trouvable)

   time tree_mem_boolean 0 t;;
   Execution time: 0.057574s
   - : bool = true

   Test avec la valeur 10 : (valeur introuvable)

   time tree_mem_boolean 10 t;;
   Execution time: 0.096660s
   - : bool = false
*)
