(* 足の本数から鶴と亀の数を計算する *)
(* tsurukame : int -> int -> int *)

let tsurukame num ashi = (((4 * num) - ashi) / 2)

let test1 = tsurukame 10 26 = 7
let test2 = tsurukame 3 10 = 1
let test3 = tsurukame 2 6 = 1