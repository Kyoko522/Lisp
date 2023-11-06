(defvar maxA 0)
(defvar maxB 0)
(defvar inA 0)
(defvar inB 0)

(defun max-capacity (b n)
  (cond
    ((= b 1) (setf inA 0) (setf maxA n))
    ((= b 2) (setf inB 0) (setf maxB n)))
  n)

(defun enter-garage (b)
  (cond
    ((= b 1)
     (when (< inA maxA)
       (incf inA))
     (- maxA inA))
    ((= b 2)
     (when (< inB maxB)
       (incf inB))
     (- maxB inB))))

(defun exit-garage (b)
  (cond
    ((= b 1)
     (when (> inA 0)
       (decf inA))
     (- maxA inA))
    ((= b 2)
     (when (> inB 0)
       (decf inB))
     (- maxB inB))))


