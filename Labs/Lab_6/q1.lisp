(defun next-state (list state)
  (dolist (i list)
    (when (equal state (car i))
      (return (cdr i)))))

(defun jump-state (list s x)
  (cond
    ((null (next-state list s)) x)
    ((equal (next-state list x) s) (next-state list s))
    ((find (next-state list x) s) (next-state list s))
    (t x)
    ))

(defun next-fork (std x)
  (cond
    ((null (cdr (assoc x std))) nil)
    ((listp (cdr (assoc x std))) (cdr (assoc x std)))
    (t (next-fork std (cdr (assoc x std))))))




(defun jump (list s1 s2)
  (cond ((null (next-state list s1)) s2)
        ((listp (next-state list s2)) (if (find s1 (next-state list s2))
                                          (next-state list s1)
                                          nil))
        ((equal s1 (next-state list s2)) (next-state list s1))
        (t (next-state list s1))))
