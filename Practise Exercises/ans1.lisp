(defun q1 (x)
  (let ((sum 0))
    (dotimes (i x sum)
      (setf sum (+ sum i 1))))) 
