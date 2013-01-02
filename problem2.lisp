(load "shared.lisp")

(defun fib-memo (base target memo)
  (cond ((= target 1) 1)
        ((= target 2) 1)
        (t (let ((fib-num (+ (car memo) (car (cdr memo)))))
             (cond ((= base target) fib-num)
                   (t (fib-memo (+ base 1) target (cons fib-num memo))))))))

(defun fib (num)
  (fib-memo 3 num '(1 1)))

(defun fib-sequence (base max-val acc)
  (let ((term (fib base)))
    (cond ((>= term max-val) acc)
          ((= (mod term 2) 0) (fib-sequence (+ base 1) max-val (cons term acc)))
          (t (fib-sequence (+ base 1) max-val acc)))))

(defun sum-fibs (max-val)
  (sum (fib-sequence 1 max-val '())))

(format t "~d~%" (sum-fibs 4000000))
