(defvar max_A 0)
(defvar max_B 0)
(defvar free_A 0)
(defvar free_B 0)

(defun max-capacity (b n)
  (if (= b 1)
      (prog
        (setf max_A n)
        (setf free_A n))
      (prog
        (setf max_B n)
        (setf free_B n))))

(defun enter-garage (b)
  (if (= b 1)
      (setf free_A (max 0 (- free_A 1)))
      (setf free_B (max 0 (- free_B 1))))

(defun exit-garage (b)
  (if (= b 1)
      (setf free_A (+ free_A 1))
      (setf free_B (+ free_B 1)))
