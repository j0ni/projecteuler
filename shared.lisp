(defun sum (l)
  (if (endp l) 0
      (+ (car l) (sum (cdr l)))))
