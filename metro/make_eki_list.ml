type eki_t = {
  namae : string;
  saitan_kyori : float;
  temae_list : string list;
}

(* let rec make_eki_list ekimei_list = match ekimei_list with
[] -> []
| {kanji = kanji ; kana = kana ; romaji = romaji ; shozoku = shozoku }::rest ->
{namae = kanji; saitan_kyori = infinity;temae_list = []} :: make_eki_list rest *)


let make_initial_eki_list shiten ekimei_list =
List.map (fun ekimei -> match ekimei with
  {kanji = kanji ; kana = kana ; romaji = romaji ; shozoku = shozoku }
  -> if shiten = kanji then {namae = kanji; saitan_kyori = 0.0; temae_list = [kanji]}
  else {namae = kanji; saitan_kyori = infinity;temae_list = []}
  ) ekimei_list
