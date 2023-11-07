(defun reverse-list (list &optional (newlist nil))
  (if (= (length list) 0)
      newlist
      (reverse-list (cdr list) (cons (car list) newlist))
  ))
