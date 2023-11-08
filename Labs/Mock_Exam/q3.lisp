(defun mapf (f a &optional (result '()))
  (if (null a)
      (nreverse result)
      (mapf f (cdr a) (cons (funcall f (car a)) result))))
