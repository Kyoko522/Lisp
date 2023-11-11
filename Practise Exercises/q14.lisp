(defun sum-deep-list-int (list &optional (sum 0))
  (cond
    ((null list) sum)
    ((integerp (car list)) (sum-deep-list-int (cdr list) (+ sum (car list))))
    ((listp (car list)) (sum-deep-list-int (cdr list) (sum-deep-list-int (car list) sum)))
    (t (sum-deep-list-int (cdr list) sum))))
