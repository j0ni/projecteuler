(defun matrix+-2 (m1 m2 acc)
  (if (endp m1) (reverse acc)
      (let ((x (car m1))
            (y (car m2)))
        (if (listp x)
            (matrix+-2 (cdr m1) (cdr m2) (cons (matrix+-2 x y nil) acc))
            (matrix+-2 (cdr m1) (cdr m2) (cons (+ x y) acc))))))

(defun matrix+-1 (m1 m2)
  (matrix+-2 m1 m2 nil))

(defun matrix+ (&rest matrices)
  (reduce #'matrix+-1 matrices))
