(*IOPETI Hugo TP Prog Fonc 22/02/2022*)

(*Exercice 1*)

let fact n =
    let y = ref 1 in 
    let res = ref 1 in 
    while !y <= n do
        res := !res * !y;
        y := !y + 1
    done;
!res;;

let findmax tab n =
    let i = ref 1 in 
    if n <= 0 then 
        failwith("La longueur de la liste ne peut pas être négative");
    
    let max = ref tab.(0) in 

    while !i < n do 
        if tab.(!i) > !max then
            max := tab.(!i);
        i := !i + 1
    done;
!max;;