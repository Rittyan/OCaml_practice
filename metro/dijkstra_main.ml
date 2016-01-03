(* 未確定の駅リストと駅間リストを受け取ったら
  各駅について最短距離と再建経路が正しく入ったリストを返す *)
let rec dijkstra_main eki_list ekikan_list = match eki_list with
| [] -> []
| first::rest ->
  let (p_saitan,v_other) = saitan_wo_bunri (first::rest) in
  let eki_list_updated = koushin p_saitan v_other ekikan_list in
  p_saitan :: dijkstra_main eki_list_updated ekikan_list
