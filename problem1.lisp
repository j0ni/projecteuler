;; If we list all the natural numbers below 10 that are multiples of 3
;; or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

;; Find the sum of all the multiples of 3 or 5 below 1000.

(defpackage :problem1
  (:use :common-lisp :euler-shared)
  (:export #:sum-multiples #:multiples))

(in-package :problem1)

(defun multiples (x max)
  (labels ((multiples (base x max)
             (if (>= base max) nil
                 (cons base (multiples (+ base x) x max)))))
    (multiples x x max)))

(defun sum-multiples (max)
  (sum (union (multiples 3 max) (multiples 5 max))))
