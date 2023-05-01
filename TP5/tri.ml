(*IOPETI Hugo TP Prog Fonc 01/03/2022*)

(*1 Je ne comprend pas pourquoi elle ne marche pas
  let rec partition l p =
    match l with
    | [] -> ([], [])
    | x :: resteListe ->
        let g, d = partition l p in
        if x < p then (x :: g, d) else (g, x :: d);;
*)
(*Si je passe avec une fonction aux :*)
let rec partition l p =
  match l with
  | [] -> ([], [])
  | x :: resteListe ->
      let rec aux accu sl1 sl2 =
        match accu with
        | [] -> (sl1, sl2)
        | x :: resteListe ->
            if x < p then aux resteListe (x :: sl1) sl2
            else aux resteListe sl1 (x :: sl2)
      in
      aux l [] []

(*2*)
let rec tri_rapide l =
  match l with
  | [] -> []
  | x :: resteListe ->
      let sl1, sl2 = partition l x in
      tri_rapide sl1 @ (x :: tri_rapide sl2)

(*3*)
