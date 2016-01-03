(* 絶対値を返す *)
(* abs_value : float -> float *)

let abs_value x = if x >= 0.0 then x else -. x

let test1 = abs_value 2.4 = 2.4
let test2 = abs_value (-1.8) = 1.8
let test3 = abs_value 0.0 = 0.0