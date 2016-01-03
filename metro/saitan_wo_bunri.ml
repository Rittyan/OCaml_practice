(* 最短距離最小の駅とそれ以外の駅からなるリストを返す *)
let saitan_wo_bunri eki_t_lst =
  List.fold_right (fun first (p,v) -> match (first,p) with
  ({namae = fn; saitan_kyori = fs; temae_list = ft},
   {namae = sn; saitan_kyori = ss; temae_list = st}) ->
    if sn = "" then (first, v)
    else if fs < ss then (first, p :: v)
    else (p, first :: v)
    ) eki_t_lst ({namae = ""; saitan_kyori = infinity; temae_list = []}, [])
