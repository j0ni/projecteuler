(defpackage :euler-shared
  (:use :common-lisp)
  (:export #:sum))

(in-package :euler-shared)

(defun sum (l)
  (if (endp l) 0
      (+ (car l) (sum (cdr l)))))
