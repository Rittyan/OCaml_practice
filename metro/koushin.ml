let koushin eki_a eki_list =
List.map (fun eki_b -> match (eki_a,eki_b) with
(
  {namae = eki_a_n; saitan_kyori = eki_a_sk; temae_list = eki_a_tl},
  {namae = eki_b_n; saitan_kyori = eki_b_sk; temae_list = eki_b_tl}
) -> let kyori = get_ekikan_kyori eki_a_n eki_b_n global_ekikan_list in
        if kyori = infinity then eki_b
        else if eki_a_sk +. kyori < eki_b_sk then {namae = eki_b_n; saitan_kyori = eki_a_sk +. kyori; temae_list = eki_b_n::eki_a_tl}
        else eki_b) eki_list
