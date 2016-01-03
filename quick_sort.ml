
(* lstの中からnより小さい値をlistで返す *)
(* take_less : int -> int list -> int list *)
let rec take_less n lst = List.filter (fun item -> item < n) lst


(* match lst with
[] -> []
| first::rest -> if first < n then first :: take_less n rest
                 else take_less n rest *)

(* lstの中からより大きい値をlistで返す *)
(* take_greater : int -> int list -> int list *)
let rec take_greater n lst = List.filter (fun item -> item > n) lst

(* match lst with
[] -> []
| first::rest -> if first > n then first :: take_greater n rest
                 else take_greater n rest *)

(* lstの中からnと同じ値のみを抽出する *)
let rec take_equal n lst = List.filter (fun item -> item = n) lst

(* 受け取ったlst をクイックソート使って昇順にソートする *)
(* quick_sort : int list -> int list *)
let rec quick_sort lst = match lst with
[] -> []
| first::rest -> quick_sort (take_less first rest)
                 @ take_equal first lst
                 @ quick_sort (take_greater first rest)


let test1 = quick_sort [] = []
let test2 = quick_sort [3;1;2] = [1;2;3]
let test3 = quick_sort [1;2] = [1;2]
let test4 = quick_sort [2;1] = [1;2]
let test5 = quick_sort [5;4;9;8;2;3] = [2;3;4;5;8;9]
let test6 = quick_sort [1;2;1] = [1;1;2]
