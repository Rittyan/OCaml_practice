
type gakusei_t = {
    namae : string;
    tensuu : int;
    seiseki : string;
    }

let hyoka gakusei = match gakusei with
    {namae = n; tensuu = t; seiseki = s} ->
    {namae = n; tensuu = t; seiseki = if t >= 80 then "A"
                                      else if t >= 70 then "B"
                                      else if t >= 60 then "C"
                                      else "D"}

(* test *)
let test1 = hyoka {namae = "asai" ; tensuu = 90 ; seiseki = ""}
            = {namae = "asai" ; tensuu = 90 ; seiseki = "A"}
let test2 = hyoka {namae = "asai" ; tensuu = 80 ; seiseki = ""}
            = {namae = "asai" ; tensuu = 80 ; seiseki = "A"}
let test3 = hyoka {namae = "asai" ; tensuu = 75 ; seiseki = ""}
            = {namae = "asai" ; tensuu = 75 ; seiseki = "B"}
let test4 = hyoka {namae = "asai" ; tensuu = 70 ; seiseki = ""}
            = {namae = "asai" ; tensuu = 70 ; seiseki = "B"}
let test5 = hyoka {namae = "asai" ; tensuu = 65 ; seiseki = ""}
            = {namae = "asai" ; tensuu = 65 ; seiseki = "C"}
let test6 = hyoka {namae = "asai" ; tensuu = 60 ; seiseki = ""}
            = {namae = "asai" ; tensuu = 60 ; seiseki = "C"}
let test7 = hyoka {namae = "asai" ; tensuu = 55 ; seiseki = ""}
            = {namae = "asai" ; tensuu = 55 ; seiseki = "D"}
