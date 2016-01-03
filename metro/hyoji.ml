(* 駅名を表示する *)
let hyoji ekimei = match ekimei with
    { kanji = kanji ; kana = kana ; romaji = romaji ; shozoku = shozoku }  ->
    shozoku ^ "," ^ kanji ^ "(" ^ kana ^ ")"
