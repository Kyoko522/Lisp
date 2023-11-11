(defstruct student
  year
  grades)

(defun count-above (x year threshold &optional (count 0))
  (if (not (= (student-year x) year))
      0
      (dolist (i (student-grades x) count)
        (when (<= threshold i)
          (incf count)))))

(defun student-above (array year grade)
 (let ((sum 0))
  (dotimes (i (length array)sum)
    (setf sum (+ sum (count-above (aref array i) year grade)))
)))
