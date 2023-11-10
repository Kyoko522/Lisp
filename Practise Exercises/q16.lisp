(defun flatten-list (list &optional (result '()))
  (cond
    ((null list) result)
    ((listp (car list)) (flatten-list (cdr list) (flatten-list (car list) result)))
    (t (flatten-list (cdr list) (reverse(cons (car list) (nreverse result)))))))
