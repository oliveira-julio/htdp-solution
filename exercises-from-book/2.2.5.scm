;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.2.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define (f n)
  (+ (/ n 3) 2)
)

(f 2) "should be" 8/3
(f 5) "should be" 11/3
(f 9) "should be" 5

;; 1

(define (f1 n)
  (+ (* n n) 10)
)

(f1 2) "should be" 14
(f1 5) "should be" 35
(f1 9) "should be" 91

;; 2

(define (f2 n)
  (+ (* 1/2 (* n n)) 20)
)

(f2 2) "should be" 22
(f2 5) "should be" 32.5
(f2 9) "should be" 60.5

;; 3

(define (f3 n)
  (- 2 (/ 1 n))
)

(f3 2) "should be" 1.5
(f3 5) "should be" 1.8
(f3 9) "should be" 17/9
