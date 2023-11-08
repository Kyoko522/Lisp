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
