let rec fold_right f lst init = match lst with
[] -> init
|first::rest -> f first (fold_right f rest init)


(* リストの中身を合計する *)
let sum lst =
fold_right (+) lst 0

let test1 = sum [1;2;3]

(* リストの個数を計算する *)
let length lst =
fold_right (fun v res -> 1 + res) lst 0

let test2 = length [1;2;3]

(* リストとリストとくっつける *)
let append lst1 lst2 =
fold_right (fun v res -> v :: res) lst1 lst2

let test3 = append [1;2] [3;4]
