let rec seiretu ekimei ekimei_lst = match ekimei_lst with
         [] -> [ekimei]
         |({kanji = kanji; kana= kana; romaji = romaji ; shozoku = shozoku} as first) :: rest ->
          match ekimei with {kanji = ekimei_kanji; kana= ekimei_kana; romaji = ekimei_romaji ; shozoku = ekimei_shozoku} ->
            if kana = ekimei_kana then seiretu ekimei rest (* 重複の場合は飛ばす *)
            else if kana < ekimei_kana then first :: seiretu ekimei rest
            else ekimei :: ekimei_lst


let rec ekimei_sort ekimei_lst = match ekimei_lst with
        [] -> []
        |({kanji = kanji; kana= kana; romaji = romaji;shozoku = shozoku} as first) :: rest -> seiretu first (ekimei_sort rest)
