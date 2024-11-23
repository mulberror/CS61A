(define (over-or-under num1 num2)
  (if (< num1 num2)
      -1
      (if (> num1 num2)
          1
          0)))

(define (make-adder num) (lambda (x) (+ x num)))

(define (composed f g) 
  (lambda (x) (f (g x)))
)

(define (repeat f n) 
  (if (= n 0)
      (lambda (x) x)
      (composed f (repeat f (- n 1)))
  )
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) (
if (= b 0)
   a
   (gcd b (remainder a b))
))
