type nengou_t = Meiji of int
                |Taisyo of int
                |Showa of int
                |Heisei of int


(* nengou_t型から西暦を返す *)
let to_seireki nengou_year = match nengou_year with
Meiji (n) -> n + 1867
|Taisyo (n) -> n + 1911
|Showa (n) -> n + 1925
|Heisei (n) -> n + 1988

(* Q17.1 *)
(* 誕生年と現在の年をnengou_t型の値としてうけとったら年齢を返す *)
let nenrei nengou_birth nengou_now = (to_seireki (nengou_now)) - (to_seireki (nengou_birth))
let nenrei_test1 = nenrei (Showa(63)) (Heisei(28)) = 28


(* Q17.2 *)
(* 1月から12月までを表す構成子January...Decemberをもつ型year_tを宣言せよ　
構成子の引数には日を表す数値を取る様にせよ *)
type year_t = January of int
              |February of int
              |March of int
              |April of int
              |May of int
              |June of int
              |July of int
              |August of int
              |September of int
              |October of int
              |November of int
              |December of int

(* Q17.3 *)
(* 12星座を洗わず seiza_tを宣言せよ　 *)
type seiza_t = Aries
              |Taurus
              |Gemini
              |Cancer
              |Leo
              |Virgo
              |Libra
              |Scorpio
              |Sagittarius
              |Capricorn
              |Aquarius
              |Pisces

(* Q17.4  *)
(* year_t型をうけとったらseiza_t型を返す関数seizaを作成する *)
let seiza month_day = match month_day with
              January (n) -> if n > 19 then Aquarius else Capricorn
              |February (n) -> if n > 18 then Pisces else Aquarius
              |March (n) -> if n > 20 then Aries else Pisces
              |April (n) -> if n > 19 then Taurus else Aries
              |May (n) -> if n > 20 then Gemini else Taurus
              |June (n) -> if n > 21 then Cancer else Gemini
              |July (n) -> if n > 22 then Leo else Cancer
              |August (n) -> if n > 22 then Virgo else Leo
              |September (n) -> if n > 22 then Libra else Virgo
              |October (n) -> if n > 23 then Scorpio else Libra
              |November (n) -> if n > 22 then Sagittarius else Scorpio
              |December (n) -> if n > 23 then Capricorn else Sagittarius

let test2 = seiza (January(18)) = Capricorn
