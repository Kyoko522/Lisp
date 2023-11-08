(defun next-state (list state)
  (dolist (i list)
    (when (equal state (car i))
      (return (cdr i)))))

(defun jump-state (list state1 state2)
  (cond ((null (next-state list state1)) state2)
        ((listp (next-state list state2)) (if (find state1 (next-state list state2))
                                              (next-state list state1)
                                              nil))
        ((equal state1 (next-state list state2)) (next-state list state1))
        (t (next-state list state1))))

