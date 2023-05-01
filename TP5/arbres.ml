(*IOPETI Hugo TP Prog Fonc 01/03/2022*)

(*1*)
type arbre = Vide | Noeud of arbre * int * arbre;;

(*2*)
let rec est_croissant a = match a with 
| Vide -> true
| Noeud (g,r,d) -> let rec aux a2 =
    match a2 with
    | V -> (true, None)
    | Noeud (g, r, d) -> 

(*3*)
let rec fusion a1 a2 =
  match a1 with
  | Vide -> a2
  | Noeud (g1, r1, d1) -> (
      match a2 with
      | Vide -> a1
      | Noeud (g2, r2, d2) ->
          if r1 < r2 then Noeud (g1, r1, fusion d1 a2)
          else Noeud (fusion a1 g2, r2, d2))

(*4*, on fait de n un arbre avant de le fusionner*)
let insert a n = fusion a (Noeud (Vide, n, Vide))

(*5*)
let depile a =
  match a with
  | Vide -> failwith "Attention, l'arbre ne doit pas être vide!"
  | Noeud (g, r, d) -> (r, fusion g d)

(*6*)
let tri_tas l =
  match l with
  | [] -> []
  | x :: reste ->
      let rec aux l2 a =
        match l2 with
        | [] ->
            let rec aux2 a2 =
              match a2 with
              | Vide -> []
              | Noeud(g,r,d) -> fst (depile a2) :: aux2 (snd (depile a2))
            in
            aux2 a
        | x2 :: reste2 -> aux reste2 (insert a x2)
      in
      aux l Vide

let l1 = 1::2::3::64::5::6::[];

(* Pour tester 
tri_tas l1;;
- : int list = [1; 2; 3; 5; 6; 64]
*)