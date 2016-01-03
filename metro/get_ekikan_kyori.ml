let rec get_ekikan_kyori eki1 eki2 ekikan_list = match ekikan_list with
        [] -> infinity
        | {kiten = kiten; shuten = shuten;keiyu = keiyu; kyori = kyori; jikan = jikan } :: rest ->
           if kiten = eki1 && shuten = eki2 then kyori
           else if kiten = eki2 && shuten = eki1 then kyori
           else get_ekikan_kyori eki1 eki2 rest
