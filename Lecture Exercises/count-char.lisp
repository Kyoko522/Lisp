(defun count-char (c s)
(let ((acc 0))
(dotimes (i (length s) acc)
(when (char= (aref s i) c)
(incf acc))))) ; equivalent to (setf acc (+ 1 acc))


(defun count-char-do (c s)
  (let ((acc 0))
    (do (i 0 (i +1))
        ((equal i (length s) acc))
      (when (char= (aref s i)c)
        (incf acc)))))
