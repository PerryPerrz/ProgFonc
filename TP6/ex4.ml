(*IOPETI Hugo TP Prog Fonc 15/03/2022*)

(*1*)
let rec fact_cps n k =
  if n == 0 then k 1 else fact_cps (n - 1) (fun x -> k (x * n))
(*x stock la valeur fact de n-1 jusqu'a 0 (du prochain truc récursif), fact n = n x fact n-1*)

(*Pour tester
      fact_cps 5 (fun x->x);;
  - : int = 120
*)
