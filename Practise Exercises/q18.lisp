(defstruct book
  title author genre pages)

(defun max-books-pages (array &optional (max '()))
(cond
  ((null array) max)
  ((not max) (max-books-pages (cdr array) (car array)))
  ((>= (book-pages (car array)) (book-pages max)) (max-books-pages (cdr array) (car array)))
  (t (max-books-pages (cdr array) max)))
  )

(defun last-books-author (array &optional (result nil))
  (cond
    ((null array) result)
    ((not result) (last-books-author (cdr array) (car array)))
    ((string> (book-author (car array)) (book-author result)) (last-books-author (cdr array) (car array)))
    (t (last-books-author (cdr array) result))))


(defun max-books (array function &optional (result nil))
  (cond
    ((null array) result)
    ((not result) (max-books (cdr array) function (car array)))
    ((funcall function (car array) result) (max-books (cdr array) function result))
    (t (max-books (cdr array) function (car array))))
  )
