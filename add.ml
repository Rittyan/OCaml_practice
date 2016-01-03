let add pair = match pair with (a,b) -> a + b

let test1 = add (0,0) = 0
let test2 = add (3,5) = 8
let test3 = add (3,-5) = -2