(* let rec shokika shiten eki_list = match eki_list with
[] -> []
|({namae = namae; saitan_kyori = saitan_kyori; temae_list = temae_list} as first) :: rest ->
 if namae = shiten then {namae = namae; saitan_kyori = 0.0; temae_list = [namae]} :: shokika shiten rest else first :: shokika shiten rest *)
(* 

let shokika shiten eki_list =
List.map (fun x -> match x with
  {namae = namae; saitan_kyori = saitan_kyori; temae_list = temae_list}
  -> if namae = shiten then {namae = namae; saitan_kyori = 0.0; temae_list = [namae]}
  else x
  ) eki_list

let test1 = shokika "表参道" global_eki_list *)
