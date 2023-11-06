(defstruct movie
  title director year type)

(defun in-array (title array)
  (dotimes (i (length array))
   (when (typep (aref array i) 'movie)
     (when (equal (movie-title (aref array i)) title)
       (return i)))))

(defun add-movie (movie array)
  (unless (in-array (movie-title movie) array)
    (dotimes (i (length array) "DB is Full")
      (when (equal (aref array i) nil)
          (setf (aref array i) movie)
          (return array)))))

(defun delete-movie (title array)
  (dotimes (i (length array))
    (when (equal (movie-title (aref array i)) title)
      (setf (aref array i) NIL)
      (return array))
    ))

(defun num-movies (array)
  (let ((count 0))
    (dotimes (i (length array) count)
     (unless (equal (aref array i) nil)
       (incf count)))))
