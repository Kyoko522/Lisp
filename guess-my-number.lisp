(defun num-guess ()
  (let ((random-num (random 100))
        (guess 101)))
  (loop
        (format t "Enter a Integer number: ")
    (setq guess (read))
    (format t "You have entered ~a~%" guess)
    (if (= guess random-num)
        (return "You Guessed it Correct"))
    (if (< guess random-num)
        (format t "Bigger")
        (format t "Smaller"))
    )
  )

