;; A palindromic number reads the same both ways. The largest
;; palindrome made from the product of two 2-digit numbers is 9009 =
;; 91 99.

;; Find the largest palindrome made from the product of two 3-digit
;; numbers.

(defvar max-factor 999)
(defvar min-factor 100)

(defun is-palindromic (num)
  (let ((str (write-to-string num)))
    (string= str (reverse str))))

(defun find-palindromes (top bottom acc)
  (cond ((= top bottom) acc)
        ((is-palindromic bottom) (find-palindromes top (1+ bottom) (cons bottom acc)))
        (t (find-palindromes top (1+ bottom) acc))))

(defun find-factors (palindrome candidate)
  (if (< candidate min-factor) nil
      (let ((remainder (rem palindrome candidate))
            (result (/ palindrome candidate)))
        (cond ((> result max-factor) nil)
              ((= remainder 0) (list palindrome candidate result))
              (t (find-factors palindrome (1- candidate)))))))

(defun find-solution (palindromes)
  (let* ((palindrome (car palindromes))
         (result (find-factors palindrome 999)))
    (if result result (find-solution (cdr palindromes)))))

(let* ((top (* max-factor max-factor))
       (bottom (* min-factor min-factor))
       (palindromes (find-palindromes top bottom nil)))
  (format t "~{palindrome: ~d; factors: ~d, ~d~}~%" (find-solution palindromes)))
