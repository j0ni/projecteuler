;; A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

;; a^2 + b^2 = c^2
;; For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

;; There exists exactly one Pythagorean triplet for which a + b + c = 1000.
;; Find the product abc.

(in-package :j0ni-euler)

(defun find-triplet (n)
  (loop named outer for a from 1 to n do
    (loop for b from a to n do
      (loop for c from b to n do
        (when (and (= n (+ a b c))
                   (= (expt c 2)
                      (+ (expt a 2)
                         (expt b 2))))
          (return-from outer (list a b c)))))))

(defun find-pt-product (n)
  (apply #'* (find-triplet n)))
