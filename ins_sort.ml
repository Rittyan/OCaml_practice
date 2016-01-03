let rec insert n lst = match lst with
         [] -> [n]
         | first :: rest -> if first < n then first :: insert n rest else n :: lst

let test2 = insert 5 [1;2;3;4;7;9]

let rec ins_sort lst = match lst with
        [] -> []
        | first :: rest -> insert first (ins_sort rest)

let test3 = ins_sort [4;2;5;7;8;1]