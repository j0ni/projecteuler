;; The prime factors of 13195 are 5, 7, 13 and 29.
;;
;; What is the largest prime factor of the number 600851475143 ?

(in-package :j0ni-euler)

(defun is-prime (num)
  (labels ((is-prime (base target)
             (cond ((= 0 (mod target 2)) nil)
                   ((= 0 (mod target base)) nil)
                   ((>= base (/ target 2)) t)
                   (t (is-prime (+ 2 base) target)))))
    (cond ((<= num 1) nil)
          ((= num 2) t)
          (t (is-prime 3 num)))))

(defun lpf (num)
  (labels ((lpf (base target)
             (if (>= base target)
                 nil
                 (let ((rem (mod target base))
                       (res (/ target base)))
                   (if (and (= rem 0) (is-prime res))
                       res
                       (lpf (+ base 1) target))))))
    (lpf 2 num)))
