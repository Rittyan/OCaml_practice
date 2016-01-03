
(* 関数 f と　リストを受け取ったら左から処理していく fold_left関数を作る *)
(* fold_left : fun `a list -> `a *)
let rec fold_left f res lst = match lst with
| [] -> res
| first::rest -> fold_left f (f res first) rest


(* リストの中身を合計する *)
let sum lst =
fold_left (+) 0 lst
let test1 = sum [1;2;3]
