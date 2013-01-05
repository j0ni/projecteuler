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

(defun find-multiple (m step factors acc)
  (cond ((>= m acc) acc)
        ((is-multiple m factors) (find-multiple (+ m step) step factors m))
        (t (find-multiple (+ m step) step factors acc))))

(defun find-solution (n)
  (let* ((factors (factors n))
         (multiple (apply #'* factors))
         (step (apply #'max factors)))
    (find-multiple step step factors multiple)))

(format t "~d~%" (find-solution 20))
