;; Type this code, as is, in your lab02-ans.lisp file.
;; DO NOT MODIFY THIS CODE
(defparameter *events* (list))

(defun roll-dice ()
  (let* ((s1 (1+ (random 6))) ;roll the first dice
         (s2 (1+ (random 6))) ;roll the seond dice
         (sum (+ s1 s2)))     ;add the two dice together
    (push (list sum s1 s2) *events*)   ;added it to the list
    sum))    ;return the sum of the two dice together

(defun execute-experiment (n)
  "This function implements a simple interface for analyzing the
   operation of function SIMULATE-DICE-ROLLS"
  (setf *events* (list))
  (let ((res (simulate-dice-rolls n)))
    (format t "simulate-dice-rolls returned: ~a~%(Sum Dice1 Dice2) values: ~a~%" res (reverse *events*))))

(defun simulate-dice-rolls (n)
  (let ((count -1) (current 0) (previous 0))
    (dotimes (i n count)
      (setf current (roll-dice))
      (when (> current previous) (incf count))
      (setf previous current))
))
