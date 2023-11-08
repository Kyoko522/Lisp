(defun interleave (listA listB &optional (result '()))
  (cond
    ((and (null listA) (null listB))
     (nreverse result))
    ((null listA)
     (interleave listA (cdr listB) (cons (car listB) result)))
    ((null listB)
     (interleave (cdr listA) listB (cons (car listA) result)))
    (t
     (interleave (cdr listA) (cdr listB) (cons (car listB) (cons (car listA) result)))))
  )


(defun comb (n k)
  (cond
    ((or (zerop k) (= n k)) 1)
    (t (+ (comb (- n 1) k) (comb (- n 1) (- k 1))))))


(defun mapf (f a &optional (result '()))
  (if (null a)
      (nreverse result)
      (mapf f (cdr a) (cons (funcall f (car a)) result))))
