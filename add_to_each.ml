let add_to_each num list = match list with
                [] -> []
                | first::rest -> (n :: first) :: add_to_each num rest