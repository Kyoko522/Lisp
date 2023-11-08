(defun count-element (list &optional (count 0))
    (if (= (length list) 0)
        count
       (count-element (cdr list) (+ count 1))))
