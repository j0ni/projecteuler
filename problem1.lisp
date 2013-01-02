;; If we list all the natural numbers below 10 that are multiples of 3
;; or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

;; Find the sum of all the multiples of 3 or 5 below 1000.

(load "shared.lisp")

(defun multiples-1 (base x max)
  (if (>= base max) nil
      (cons base (multiples-1 (+ base x) x max))))

(defun multiples (x max)
  (multiples-1 x x max))

(defun sum-multiples (max)
  (sum (union (multiples 3 max) (multiples 5 max))))

(format t "~d~%" (sum-multiples 1000))
