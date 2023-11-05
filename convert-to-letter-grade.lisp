(defun convert-to-letter-grade (numGrade)
  (cond
    ((>= numGrade 90) "A")
    ((>= numGrade 80) "A")
    ((>= numGrade 70) "B")
    ((>= numGrade 60) "C")
    ((>= numGrade 50) "D")
    (t "F")))
