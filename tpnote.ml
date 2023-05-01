let fibo n =
  if n == 0 then 0
  else
    let n1 = ref 0 in
    let n2 = ref 1 in
    let i = ref 1 in
    let temp = ref 0 in
    while !i < n do
      temp := !n1;
      n1 := !n2;
      n2 := !temp + !n2;
      i := !i + 1
    done;
    !n2

let incrarray array length =
  let i = ref 0 in
  while !i < length do
    array.(!i) <- array.(!i) + 1;
    i := !i + 1
  done;
  array

let a = [| 4; 6; 7; 8 |]
let l = [ 1; 2; 3; 4; 5 ]

(*
Je prends une liste
si elle est vide je renvoi deux listes vides
Si il y a un element
Je renvoi une liste composé de  cette élément et une liste vide
sinon je stocke le premier et le 2 dans deux listes et je continue d'appeler le divide list sur ce qui reste et genre ça va continuer de remplir les deux sous listes
*)

let rec divide_list liste =
  match liste with
  | [] -> ([], [])
  | x :: l -> ([ x ], [])
  | x :: y :: l ->
      let a, b = divide_list l in
      (x :: a, y :: b)

(* on stock le résultat de divide_list ds a et b, ensuite, on fait le reste (in)) *)
let rec merge_int_liste liste1 liste2 =
  match liste1 with
  | [] -> liste2
  | t1 :: q1 -> (
      match liste2 with
      | [] -> liste1
      | t2 :: q2 ->
          if t1 < t2 then (t1 : int) :: merge_int_liste q1 liste2
          else (t2 : int) :: merge_int_liste liste1 q2)

let rec msort liste =
  match liste with
  | [] -> []
  | [ a ] -> liste
  | _ ->
      let liste1, liste2 = divide_list liste in
      merge_int_liste (msort liste1) (msort liste2)

(*b, match pr checker si c'est une liste vide ou non*)

(*3*)
type abr = Feuille | Noeud of abr * int * abr

let a1 =
  Noeud
    ( Noeud (Feuille, 2, Feuille),
      3,
      Noeud (Noeud (Feuille, 4, Feuille), 5, Noeud (Feuille, 7, Feuille)) )

let rec size a =
  match a with Feuille -> 0 | Noeud (fg, v, fd) -> 1 + size fg + size fd

let rec height a =
  match a with
  | Feuille -> 0
  | Noeud (fg, v, fd) ->
      if height fd > height fg then height fd + 1 else height fg + 1

let rec search a n =
  match a with
  | Feuille -> false
  | Noeud (fg, v, fd) ->
      if v == n then true else if n >= v then search fd n else search fg n

let rec insert a n =
  match a with 
  | Feuille -> Noeud (Feuille, n, Feuille)
  | Noeud (fg,c,fd) -> if n >= c then insert fd n else insert fg n;;