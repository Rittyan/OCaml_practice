(* 鶴と亀の数から足の本数を計算する *)
(* tsurukame_no_ashi : int -> int -> int *)

let tsurukame_no_ashi tsuru kame = (tsuru * 2) + (kame * 4)

let test1 = tsurukame_no_ashi 2 2 = 12
let test2 = tsurukame_no_ashi 5 2 = 18
let test3 = tsurukame_no_ashi 3 4 = 22