(*IOPETI Hugo TP Prog Fonc 08/02/2022*)

(*Exercice 4*)

(*1*)
let rec unfold f i = match f i with
| None -> []
| Some (b,e) -> b::(unfold f e);; (*Je met l'élement actuel (b) et je rappel récursivement unfold avec f et e en argument*)

(* Pour tester 

let f n = if n > 9 then None else Some (n , n + 1);;

unfold f 0;;
- : int list = [0; 1; 2; 3; 4; 5; 6; 7; 8; 9]

*)

(*2*)
let fibo_liste_1 n = unfold (fun (x,y) -> if (x + y) > n then None else Some (x + y, (y, x + y))) (0,1);;

(* Dans la paire (x,y), x correspond au grand-père de la valeur actuel et y au père de la valeur actuel
Si x + y > n, on stop la suite.
Sinon on ajoute la résultat (x+y) à la liste et on continue. e correspond à l'état suivant (ce sur quoi on rappel la fonction anonyme, ici comme c'est fibo, on rappel sur la dernière valeur (père de la valeur actuel) et la valeur actuel) (0 et 1 correspond à l'état initial, soit les 2 premières valeurs de fibonacci)
*)

(* Pour tester 

fibo_liste_1 100;;
- : int list = [1; 2; 3; 5; 8; 13; 21; 34; 55; 89]

OR, on peut voir que l'état initial (0 et 1 de fibo) ne se sont pas mis dedans, pour résoudre ce problème, je décide de hard coder les valeurs manquantes : 
*)

let fibo_liste_2 n = if n == 0 then 0::[] else 0::1::(unfold (fun (x,y) -> if (x + y) > n then None else Some (x + y, (y, x + y))) (0,1));;

(* Pour tester

fibo_liste_2 100;;
- : int list = [0; 1; 1; 2; 3; 5; 8; 13; 21; 34; 55; 89]

fibo_liste_2 1;;
- : int list = [0; 1; 1]

fibo_liste_2 0;;
- : int list = [0]

*)