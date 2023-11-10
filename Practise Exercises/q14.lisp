(defun sum-deep-list (list &optional (sum 0))
  (cond
   ((null list) sum)
   ((listp (car list)) (sum-deep-list (car list)  (sum-deep-list (cdr list) sum))) 
   (t (sum-deep-list (cdr list) (+ sum (car list))))))

