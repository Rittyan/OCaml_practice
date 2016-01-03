let rec length lst = match lst with
                    [] -> 0
                    | first :: rest -> 1 + length rest

let test1 = length [1;2;3;4;5] = 5