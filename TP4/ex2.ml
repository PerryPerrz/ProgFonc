(*IOPETI Hugo TP Prog Fonc 22/02/2022*)

(*Exercice 2*)

(*1*)
type cellule = {
    mutable value: int
};;

(*)
(*2*)
type ldcc = {
    mutable cellule: cellule option;
    mutable prev: cellule option;
    mutable next: cellule option
};;

(*3*)
let liste_vide = {cellule = None; prev = None ; next = None};;

(*4*)
let liste_un_entier = {cellule = Some {value = 1}; prev = None; next = None};; (*le champ cellule de ldcc prend une cellule option donc soit None soit Some de qqch*)

(*5*)
let hd_ldcc ldcc = match ldcc.cellule with  (*On veut savoir si la cellule est un None (est vide) ou non -> donc match *)
| None -> failwith("La liste est vide")
| Some a -> a.value;; (*Si la liste n'est pas vide, je retourne la valeur de la première cellule (on démarre à la première cellule)*)

(*6*)
let tl_ldcc ldcc = match ldcc.prev with
| None -> hd_ldcc ldcc
| Some a -> match a with (*a = un type ldcc*)
            | None -> failwith("La liste est vide")
            | Some a -> a.value;;
*)

(*2*)
type ldcc = Vide | List of ldcc ref * cellule * ldcc ref;; (*ldcc ref = préc (c'est un pointeur), cellule = valeur (entier), ldcc ref = suivant (c'est un pointeur)*)

(*3*)
let liste_vide = Vide;;

(*4*)
let liste_un_entier = List (ref Vide, {value = 1}, ref Vide);;

(*5*)
let hd_ldcc ldcc = match ldcc with
| Vide -> failwith("La liste est vide")
| List (prec, cellule, suiv) -> cellule.value;;

(*6*)
let tl_ldcc ldcc = match ldcc with
| Vide -> failwith("La liste est vide")
| List (prec, cellule, suiv) -> match !prec with
                                | Vide -> cellule.value (* Si il n'existe pas de cellule prec, cela signifie que c'est la seul cellule donc en renvoie la valeur de cette unique cellule*)
                                | List (prec, cellule2, suiv) -> cellule2.value;; (*Sinon, on renvoie la valeur de la dernière cellule*)

(*7*)
let rec nth_ldcc ldcc n = 
    if n = 0 then
        match ldcc with 
        | Vide -> failwith("La cellule est vide")
        | List (prec, cellule, suiv) -> cellule.value
    else 
         match ldcc with 
        | Vide -> failwith("La cellule n'existe pas")
        | List (prec, cellule, suiv) -> nth_ldcc !suiv (n-1);;

(*Pour tester*)
let liste2cel = List (ref Vide, {value = 3}, ref liste_un_entier);;

(*8*)
let contents_ldcc ldcc = match ldcc with
| Vide -> failwith("La liste est vide")
| List (prec, cellule, suiv) -> cellule;

(*9*)
let length_ldcc ldcc = match ldcc with
| Vide -> 0
| List (prec, cellule, suiv) -> let rec aux ldcc accu prems_cellule = match ldcc with
                                | Vide -> accu
                                | List (prec, cellule, suiv) -> if prems_cellule = cellule then 
                                                                    accu 
                                                                else 
                                                                    aux !suiv (accu + 1) prems_cellule
                                in aux !suiv 1 cellule;; (*première appel de la fonction*)