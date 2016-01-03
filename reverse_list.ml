
(* リストを逆にする *)
(* reverse_list : `a list -> `a list *)
let reverse_list lst =
 let rec reverse lst res = match lst with
 [] -> res
 | first::rest -> reverse rest (first::res)
 in reverse lst []

 let test1 = reverse_list [1;2;3;4;5] =  [5;4;3;2;1]
