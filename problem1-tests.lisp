(defpackage :problem1-tests
  (:use :common-lisp
        :lisp-unit
        :problem1))

(in-package :problem1-tests)

(define-test sum-multiples
  (assert-true (= 233168 (sum-multiples 1000))))
