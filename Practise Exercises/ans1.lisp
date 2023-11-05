(defun sum-of-integers (n)
  (let ((sum 0))
    (loop for i from 1 to n do
      (setq sum (+ sum i)))
    sum))
