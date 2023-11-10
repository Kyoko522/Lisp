(defun interleave (a b &optional (result '()))
  (cond
    ((and (null a) (null b)) (nreverse result))
    ((null a) (interleave a (cdr b) (cons (car b) result)))
    ((null b) (interleave (cdr a) b (cons (car a) result)))
    (t (interleave (cdr a) (cdr b) (cons (car b) (cons (car a) result))))))


(defun comb (n k)
  (cond
   ((and (>= n 0) (or (= k 0) (= k n))) 1)
   ((> n k 0) (+ (comb (- n 1) k) (comb (- n 1) (- k 1))))
    ))

(defun mapf (f a &optional (result nil))
  (cond
    ((null a) (nreverse result))
    (t (mapf f (cdr a) (cons (funcall f (car a)) result)))))
