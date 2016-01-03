let rec map kansuu lst = match lst with
[] -> []
| first::rest -> kansuu first :: map kansuu rest
