;; 2520 is the smallest number that can be divided by each of the
;; numbers from 1 to 10 without any remainder.

;; What is the smallest positive number that is evenly divisible by
;; all of the numbers from 1 to 20?

(defun factors (n)
  (reverse
   (loop for i from 1 to n
      collect i)))

(defun is-multiple (n factors)
  (loop for i in factors
       always (= (rem n i) 0)))

(defun find-multiple (m step factors)
  (if (is-multiple m factors) m
      (find-multiple (+ m step) step factors)))

(defun find-solution (n)
  (let* ((factors (factors n))
         (step (apply #'max factors)))
    (find-multiple step step factors)))

(format t "~d~%" (find-solution 20))
