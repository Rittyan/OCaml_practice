(* 学生の成績でわけて人数を数える *)
let rec shukei lst = match lst with
            [] -> (0,0,0,0)
            | {namae = n; tensuu = t; seiseki = s}::rest ->
                let (a,b,c,d) = shukei rest in
                if s = "A" then (a+1 ,b,c,d)
                else if s = "B" then (a , b+1 ,c ,d )
                else if s = "C" then (a , b , c+1, d)
                else (a , b , c , d+1)

(* test *)
let test1 = shukei [{namae = "asai" ; tensuu = 90 ; seiseki = "A"};
{namae = "asai" ; tensuu = 80 ; seiseki = "A"};
{namae = "asai" ; tensuu = 75 ; seiseki = "B"};
{namae = "asai" ; tensuu = 70 ; seiseki = "B"};
{namae = "asai" ; tensuu = 65 ; seiseki = "C"};
{namae = "asai" ; tensuu = 60 ; seiseki = "C"};
{namae = "asai" ; tensuu = 55 ; seiseki = "D"}]