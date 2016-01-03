(* 数字nを1までリスト化する *)
let rec enumrate n = if n = 0 then [] else n :: enumrate (n-1)

(* 約数リストを生成する *)
(* int -> int list *)
let divisor n = List.filter (fun x -> n mod x = 0) (enumrate n)

let perfect m = List.filter (fun n -> List.fold_right (+) (divisor n) 0 - n = n) (enumrate m)
