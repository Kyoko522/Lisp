(defun is-palindrome? (list)
  (cond
    ((null list) t)
    ((not (equal (car list) (car (reverse list)))) nil)
    (t (is-palindrome? (cdr (reverse (cdr list)))))))
