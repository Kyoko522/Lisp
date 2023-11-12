(defun interleave (x y &optional (result nil))
  (cond
    ((and (null x) (null y)) (nreverse result))
    ((null x) (interleave x (cdr y) (cons (car y) result)))
    ((null y) (interleave (cdr x) y (cons (car x) result)))
    (t (interleave (cdr x) (cdr y) (cons (car y) (cons (car x) result))))))

(defun comp (n k)
  (cond
    ((and (>= n 0) (= k 0)) 1)
    ((and (>= n 0) (= n k)) 1)
    ((> n k 0) (+ (comp (- n 1) k) (comp (- n 1) (- k 1))))))

(defun mapf (f array &optional (result nil))

  (cond
    ((null array) (reverse result))
    (t (mapf f (cdr array) (cons (funcall f (car array)) result))))
  )
