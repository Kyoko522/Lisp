(defun merge-sorted-lists (listA listB comp &optional (result '()))
(cond
  ((and (null listA) (null listB)) (nreverse result))
  ((null listA) (merge-sorted-lists listA (cdr listB) comp (cons (car listB) result)))
  ((null listB) (merge-sorted-lists (cdr listA) listB comp (cons (car listA) result)))
  (t (if (funcall comp (car listA) (car listB))
         (merge-sorted-lists (cdr listA) listB comp (cons (car listA) result))
         (merge-sorted-lists listA (cdr listB) comp (cons (car listB) result))))
 


  ))
