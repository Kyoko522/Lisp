(defun comb (n k)
  (cond
    ((or (zerop n) (zerop k)) 1)
    ((= n k) 1)
    (t (+ (comb (- n 1) k) (comb (- n 1) (- k 1))))))
