#use "metro/global_ekimei_list.ml"
#use "metro/global_ekikan_list.ml"
#use "metro/make_eki_list.ml"
#use "metro/seiretu.ml"
#use "metro/get_ekikan_kyori.ml"
#use "metro/koushin.ml"
#use "metro/hyoji.ml"
#use "metro/saitan_wo_bunri.ml"
#use "metro/romaji_to_kanji.ml"
#use "metro/kyori_wo_hyoji.ml"
#use "metro/dijkstra_main.ml"
(* 重複を消してそーと *)
let sorted_ekimei_list = ekimei_sort global_ekimei_list

(* 初期化 *)
let init_eki_list = make_initial_eki_list "渋谷" sorted_ekimei_list

let eki_lst = dijkstra_main init_eki_list global_ekikan_list

(* #use "metro/metro.ml";; *)

(* let test1 = romaji_to_kanji "myogadani" global_ekimei_list *)
(* let test2 = get_ekikan_kyori "神楽坂" "後楽園" global_ekikan_list *)
(* let test3 = kyori_wo_hyoji "myogadani" "korakuen" *)
