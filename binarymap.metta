
(: List type)
(: Nil (List $t))
(: Cons (-> $t (List $t) (List $t)))
(: addTwo (-> Number Number Number))  

(= (binaryMap $f $const (Nil)) (Nil))  
(= (binaryMap $f $const (Cons $x $xs))  
   (Cons ($f $x $const) (binaryMap $f $const $xs)))



(= (addTwo $a $b) (+ $a $b))


! (binaryMap addTwo 10 (Cons 1 (Cons 2 (Cons 3 (Nil)))))  
