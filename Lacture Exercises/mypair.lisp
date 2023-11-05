(defun mypair x y command
  (cond
    ((eq command sum) (+ x y))
    ((eq command diff) (- x y))
    ((eq command times) (* x y))
    ((eq command divide) (/ x y))
    ((eq command print) ((pprint x) (pprint y)))))
