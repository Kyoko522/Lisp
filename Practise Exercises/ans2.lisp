(defun is-prime (n)
  (if (<= n 1)
      nil
      (let ((prime t))
        (dotimes (i (/ n 2) prime)
          (if (zerop (mod n (1+ i)))
              (setq prime nil)))))
  t)


