(defun guess-my-number ()
  (let ((number (random 100))
        (guess -1))
    (loop
      (print "Enter a Number: ")
      (setf guess (read))
      (cond
        ((< guess number) (print 'Higher))
        ((> guess number) (print 'Lower))
        ((= guess number) (print "You guessed the correct number") (return))
     ))))


