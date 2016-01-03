(* 多相の木を表す *)
type 'a tree_t = Empty (* 空 *)
              |Leaf of 'a (* 葉 *)
              | Node of 'a tree_t * 'a * 'a tree_t (* 節 *)

              (* tree は
               - Empty 空の木　あるいは
               - Leaf (n) 値がnの葉 あるいは
               - Node (t1, n, t2) 左の木がt1、値がn、右の木がt2の節
               という形 *)
