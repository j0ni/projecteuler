;; The sum of the squares of the first ten natural numbers is,

;; 12 + 22 + ... + 102 = 385
;; The square of the sum of the first ten natural numbers is,

;; (1 + 2 + ... + 10)2 = 552 = 3025

;; Hence the difference between the sum of the squares of the first
;; ten natural numbers and the square of the sum is 3025 385 = 2640.

;; Find the difference between the sum of the squares of the first one
;; hundred natural numbers and the square of the sum.

(load "shared.lisp")

(defun square (n)
  (* n n))

(defun sum-of-squares-1 (n acc)
  (if (= n 1) 1
      (+ (square n) (sum-of-squares-1 (1- n) acc))))

(defun sum-of-squares (n)
  (sum-of-squares-1 n 0))

(defun square-of-sums (n)
  (square
   (sum
    (loop for i from 1 to n
       collect i))))

(defun find-solution (n)
  (- (square-of-sums n) (sum-of-squares n)))
