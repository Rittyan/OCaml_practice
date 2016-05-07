exception No_such_station of string

let rec romaji_to_kanji romaji ekimei_list = match ekimei_list with
    [] -> raise No_such_station romaji
    | {kanji = kanji; kana = kana; romaji = r; shozoku = s} :: rest ->
    if romaji = r then kanji else romaji_to_kanji romaji rest
