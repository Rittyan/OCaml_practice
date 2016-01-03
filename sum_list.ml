
(* リストの数値を合計して返す *)
let rec sum_list lst = match lst with
                [] -> 0
                | first :: rest -> first + sum_list rest

let test1 = sum_list [1;2;3;4;5;6;7;8;9;10] = 55
