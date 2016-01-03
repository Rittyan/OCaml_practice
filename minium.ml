
let rec minimum lst = match lst with
        [] -> max_int
        | first::rest ->
        let min_rest = minimum rest in if first <= min_rest then first
                                else min_rest

let test1 = minimum [3;5;2;4;9]