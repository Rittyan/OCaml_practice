

(* リストの中の数値を足し算していき、リストで返す *)
(* calc_sum_list int list -> int list *)
let calc_sum_list lst =
 let rec calc_sum lst total = match lst with
 [] -> []
 |first ::rest -> (first + total) :: calc_sum rest (first + total)
 in calc_sum lst 0

let test1 = calc_sum_list [3; 2; 1; 4] = [3;5;6;10]
