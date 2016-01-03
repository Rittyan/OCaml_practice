(* 受け取ったリスト lst から正の要素のみを取り出す *)
let rec filter_positive lst = match lst with
[] -> []
|first :: rest -> if first >= 0 then first:: filter_positive rest
                    else filter_positive rest

let test1 = filter_positive [1;2;3;4;5;-1;-2] = [1;2;3;4;5]
let test2 = filter_positive [-1;-2] = []


(* fがtrueの場合のみ返す *)
let rec filter f lst = match lst with
[] -> []
|first :: rest -> if f first then first:: filter f rest
                  else filter f rest


let positive_filter lst =
let f q = q >= 0 in
filter f lst

let test3 = positive_filter [-1;-1;-2;3;-1;;4;5]
