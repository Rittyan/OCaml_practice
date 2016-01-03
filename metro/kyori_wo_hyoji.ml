
let kyori_wo_hyoji romaji_eki1 romaji_eki2 =
    let eki1 = romaji_to_kanji romaji_eki1 global_ekimei_list in
    let eki2 = romaji_to_kanji romaji_eki2 global_ekimei_list in
    let kyori = get_ekikan_kyori eki1 eki2 global_ekikan_list in
    if not(kyori = infinity)
    then eki1 ^ "駅から" ^ eki2 ^ "駅までは" ^ string_of_float kyori ^ "kmです"
    else eki1 ^ "駅と" ^ eki2  ^ "駅は繋がっていません"
