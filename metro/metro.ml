#use "metro/global_ekimei_list.ml"
#use "metro/global_ekikan_list.ml"
#use "metro/make_eki_list.ml"
#use "metro/seiretu.ml"
#use "metro/get_ekikan_kyori.ml"
#use "metro/koushin.ml"



(* 重複を消してそーと *)
let sorted_ekimei_list = ekimei_sort global_ekimei_list

(* 初期化 *)
let init_eki_list = make_initial_eki_list "表参道" sorted_ekimei_list


(* 最短距離最小の駅とそれ以外の駅からなるリストを返す *)
let saitan_wo_bunri eki_t_lst =
  List.fold_right (fun first (p,v) -> match (first,p) with
  ({namae = fn; saitan_kyori = fs; temae_list = ft},
   {namae = sn; saitan_kyori = ss; temae_list = st}) ->
    if sn = "" then (first, v)
    else if fs < ss then (first, p :: v)
    else (p, first :: v)
    ) eki_t_lst ({namae = ""; saitan_kyori = infinity; temae_list = []}, [])

let hyoji ekimei = match ekimei with
    { kanji = kanji ; kana = kana ; romaji = romaji ; shozoku = shozoku }  ->
    shozoku ^ "," ^ kanji ^ "(" ^ kana ^ ")"

let rec romaji_to_kanji romaji ekimei_list = match ekimei_list with
    [] -> ""
    | {kanji = kanji; kana = kana; romaji = r; shozoku = s} :: rest ->
    if romaji = r then kanji else romaji_to_kanji romaji rest


let kyori_wo_hyoji romaji_eki1 romaji_eki2 =
    let eki1 = romaji_to_kanji romaji_eki1 global_ekimei_list in
    let eki2 = romaji_to_kanji romaji_eki2 global_ekimei_list in
    let kyori = get_ekikan_kyori eki1 eki2 global_ekikan_list in
    if not(kyori = infinity)
    then eki1 ^ "駅から" ^ eki2 ^ "駅までは" ^ string_of_float kyori ^ "kmです"
    else eki1 ^ "駅と" ^ eki2  ^ "駅は繋がっていません"


(* let test1 = romaji_to_kanji "myogadani" global_ekimei_list *)
(* let test2 = get_ekikan_kyori "神楽坂" "後楽園" global_ekikan_list *)
(* let test3 = kyori_wo_hyoji "myogadani" "korakuen" *)
