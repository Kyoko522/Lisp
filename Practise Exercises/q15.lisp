(defun sum-deep-list-int (list &optional (sum 0))
(cond
  ((null list) sum)
  ((listp (car list)) (sum-deep-list-int (cdr list) (sum-deep-list-int (car list) sum)))
  ((not(integerp (car list))) (sum-deep-list-int (cdr list) sum))
  (t (sum-deep-list-int (cdr list) (+ sum (car list))))))
