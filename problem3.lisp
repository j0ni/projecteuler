;; The prime factors of 13195 are 5, 7, 13 and 29.
;;
;; What is the largest prime factor of the number 600851475143 ?

(defun is-prime-1 (base target)
  (cond ((= 0 (mod target 2)) nil)
        ((= 0 (mod target base)) nil)
        ((>= base (/ target 2)) t)
        (t (is-prime-1 (+ 2 base) target))))

(defun is-prime (num)
  (cond ((<= num 1) nil)
        ((= num 2) t)
        (t (is-prime-1 3 num))))

(defun lpf-1 (base target)
  (if (>= base target)
      nil
      (let ((rem (mod target base))
            (res (/ target base)))
        (if (and ( = rem 0) (is-prime res))
            res
            (lpf-1 (+ base 1) target)))))

(defun lpf (num)
  (lpf-1 2 num))

(format t "~d~%" (lpf 600851475143))
