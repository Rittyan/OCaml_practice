
(* 値と同じもののみ返す *)
let even num lst =
let f v = (num = v) in
List.filter f lst

let test1 = even 1 [1;2;3;4;5;1;-1;0]
