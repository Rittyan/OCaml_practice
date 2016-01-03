
type tree_t = Empty (* 空 *)
              |Leaf of int (* 葉 *)
              | Node of tree_t * int * tree_t (* 節 *)

(* tree は
 - Empty 空の木　あるいは
 - Leaf (n) 値がnの葉 あるいは
 - Node (t1, n, t2) 左の木がt1、値がn、右の木がt2の節
 という形 *)

 let tree1 = Empty
 let tree2 = Leaf (3)
 let tree3 = Node (tree1,4,tree2)
 let tree4 = Node (tree2,5,tree3)

let rec sum_tree tree = match tree with
  Empty -> 0
  |Leaf(n) -> n
  |Node(t1,n,t2) -> (sum_tree t1) + (sum_tree t2) + n

let test1 = sum_tree tree1 = 0
let test2 = sum_tree tree2 = 3
let test3 = sum_tree tree3 = 7
let test4 = sum_tree tree4 = 15

(* Q17.5 *)
(* tree_t型の木をうけとったら値を全て二倍にする *)
(* tree_double : tree_t -> int *)
let rec tree_double tree = match tree with
Empty -> 0
|Leaf(n) -> (n * 2)
|Node(t1,n,t2) -> (tree_double t1) + (tree_double t2) + (n * 2)

let test5 = tree_double tree1 = 0
let test6 = tree_double tree2 = 6
let test7 = tree_double tree3 = 14
let test8 = tree_double tree4 = 30

(* Q17.6 *)
(* int -> int型関数fとtree_tをうけとったら値全てにfを適用するtree_mapを作成する *)
let rec tree_map f tree = match tree with
Empty -> Empty
|Leaf(n) -> Leaf(f n)
|Node(t1,n,t2) -> Node(tree_map f t1,(f n),tree_map f t2)

let test9 = tree_map (fun num -> num + 1) tree1
let test10 = tree_map (fun num -> num + 1) tree2
let test11 = tree_map (fun num -> num + 1) tree3
let test12 = tree_map (fun num -> num + 1) tree4

(* Q17.7 *)
(* tree_t型をうけとったら節と葉の合計がいくつか返す *)
let rec tree_length tree = match tree with
Empty -> 0
|Leaf(n) -> 1
|Node(t1,n,t2) -> tree_length t1 + 1 + tree_length t2

let test13 = tree_length tree1 = 0
let test14 = tree_length tree2 = 1
let test15 = tree_length tree3 = 2
let test16 = tree_length tree4 = 4

(* Q17.8  *)
(* tree_tを受け取ったら木の深さを返すtree_depthを作成する *)
let rec tree_depth tree = match tree with
Empty -> 0
|Leaf(n) -> 0
|Node(t1,n,t2) ->  (max (tree_depth t1) (tree_depth t2)) + 1

let test17 = tree_depth tree1 = 0
let test18 = tree_depth tree2 = 0
let test19 = tree_depth tree3 = 1
let test20 = tree_depth tree4 = 2
