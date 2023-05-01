(*3*)
let rec times a b = match a with 
| 0 -> a
| 1 -> b
| x -> match b with 
      | 0 -> 0
      | 1 -> x 
      | y -> x + (times x (y-1))
      
"let rec times = fun a -> fun b -> if b = 1 then a else a + times a (b-1) in times 3 4" |> expr_from_string |> eval_ocaml;;