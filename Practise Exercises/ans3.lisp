(defun factorial (x &optional (result 1))
  (if (= x 1)
      result
      (factorial (- x 1) (* x result))))
