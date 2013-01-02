(load "shared.lisp")

(defun multiples-1 (base x max)
  (if (>= base max) nil
      (cons base (multiples-1 (+ base x) x max))))

(defun multiples (x max)
  (multiples-1 x x max))

(defun sum-multiples (max)
  (sum (union (multiples 3 max) (multiples 5 max))))

(format t "~d~%" (sum-multiples 1000))
