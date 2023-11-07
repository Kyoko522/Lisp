(defun fibonacci (x)
  (if (= x 1)
      1
      (if (= x 0)
          0
          (+ (fibonacci (- x 1)) (fibonacci (- x 2))))))
