(* 目的: 働いた時間xに応じたアルバイト代を計算する *)

let jikyu = 950

let kihonkyu = 100

let yugu_jikyu = 980

(* kyuyo: int -> int *)
let kyuyo x =  kihonkyu + x * (if x > 30 then yugu_jikyu else jikyu)


let test1 = kyuyo 25 = 23850
let test2 = kyuyo 28 = 26700
let test3 = kyuyo 31 = 30480