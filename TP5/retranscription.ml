(*IOPETI Hugo TP Prog Fonc 01/03/2022*)

(*1*)
let array_square array length =
    let i = ref 0 in
    while !i < length do 
        array.(!i) <- array.(!i) * array.(!i);
        i := !i + 1
    done;
;;

(*2*)
let array_square_rec array length = 
    let rec aux array length i = 
        if (i < length) then 
            (array.(i) <- (array.(i) * array.(i)); aux array length (i+1)) 
    in aux array length 0
;;

(*3*)
let list_square l =
    let l1 = List.fold_left
;;
