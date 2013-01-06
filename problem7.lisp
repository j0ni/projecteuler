;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we
;; can see that the 6th prime is 13.

;; What is the 10 001st prime number?

(defun find-factor (n acc)
  (if (= (length acc) 1) nil
      (let ((candidate (car acc)))
        (cond ((= (mod n candidate) 0) candidate)
              ((> candidate (sqrt n)) nil)
              (t (find-factor n (cdr acc)))))))

(defun get-prime-1 (n base acc)
  (cond ((= n (length acc)) (car acc))
        ((not (find-factor base (reverse acc))) (get-prime-1 n (+ base 2) (cons base acc)))
        (t (get-prime-1 n (+ base 2) acc))))

(defun get-prime (n)
  (get-prime-1 n 3 '(2)))

(format t "~d~%" (get-prime 10001))
