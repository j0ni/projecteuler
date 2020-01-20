(defpackage :j0ni-euler-tests
  (:use :common-lisp
        :lisp-unit
        :j0ni-euler))

(in-package :j0ni-euler-tests)

(define-test problem1
  (assert-true (= 233168 (sum-multiples 1000))))

(define-test problem2
  (assert-true (= 4613732 (sum-fibs 4000000))))

(define-test problem3
  (assert-true (is-prime 13))
  (assert-false (is-prime 27))
  (assert-true (= 6857 (lpf 600851475143))))

(define-test problem4
  (assert-true (= 906609 (car (find-palindrome)))))

(define-test problem5
  (assert-true (= 232792560 (smallest-number-divisible-by 20))))

(define-test problem6
  (assert-true (= 25164150 (sum-square-diff 100))))

(define-test problem7
  (assert-true (= 104743 (get-prime 10001))))

(define-test problem8
  (assert-true (= 40824 (max-product-term))))

(define-test problem9
  (assert-true (= 31875000 (find-pt-product 1000))))
