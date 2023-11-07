(defstruct person
  name age)

(defun filter-ages (array threshold)
(let ((filter-array (make-array 0 :adjustable t :fill-pointer t)))

  (dotimes (i (length array) filter-array)
    (when (> (person-age (aref array i)) threshold)
      (vector-push-extend (person-name (aref array i)) filter-array)))))

(defun array-group (a b)
  (let ((final (make-array 0 :adjustable t :fill-pointer t))
        (maxlength (max (length a) (length b))))
    
    (dotimes (i maxlength)
      (let ((temp (make-array 2 :initial-element nil))
            (element-a (if (< i (length a)) (aref a i) nil))
            (element-b (if (< i (length b)) (aref b i) nil)))
        (setf (aref temp 0) element-a)
        (setf (aref temp 1) element-b)
        (vector-push-extend temp final)))
    final))


