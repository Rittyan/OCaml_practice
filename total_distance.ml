(* 距離と距離の合計を持っている型 *)
type distance_t = {
  kyori: float; (* 距離 *)
  total: float; (* 距離の合計 *)
}

let kyori_lst = [
{kyori = 0.3; total = 0};
{kyori = 0.9; total = 0};
{kyori = 1.4; total = 0};
{kyori = 0.8; total = 0};
]

(* 先頭からリストの中の各点までの距離の合計を計算する *)
(* total_distance : distance_t list -> distance_t list *)
let rec total_distance lst =
(* total0 はこれまでの距離の合計 accumulator *)
(* calc_total_distance : distance_t list -> float -> distance_t list *)
let rec calc_total_distance lst total0 = match lst with
| [] -> []
| {kyori = k; total = t}::rest ->
  {kyori = k; total = total0 +. k}::
  calc_total_distance rest (total0 +. k)

in calc_total_distance lst 0.0
