
(* ふたつの自然数mとnの最大公約数を求める *)
(* int -> int -> int *)
let rec gcd m n =
if n = 0 then m
else gcd n (m mod n)

let test1 = gcd 6 3 = 3
let test2 = gcd 18 12 = 6
