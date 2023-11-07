(defun find-smallest (list &optional (smallest nil))
  (if (= (length list) 0)
      smallest
      (let ((temp (car list)))
        (when (integerp temp)
          (when (or (eq smallest nil) (> smallest temp))
            (setf smallest temp)))
        (find-smallest (cdr list) smallest))))
