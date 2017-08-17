;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; equation1: number -> boolean
;; determines if a number is a solution for the equation 4 * n + 2 = 62
;; Examples:
;; 15 is a solution
;; 10 is not a solution
(define (equation1 number)
  (= (+ (* 4 number) 2 ) 62)
)


;; equation2: number -> boolean
;; determines if a number is a solution for the equation 2 * n² = 102
;; Examples:
;; the square root of 51 is a solution
;; 10 is not a solution
(define (equation2 number)
  (= (* 2 number number) 102)
)


;; equation3: number -> boolean
;; determines if a number is a solution for the equation 4 * n² + 6 * n + 2 = 462
;; Examples:
;; 10 is a solution
;; 5 is not a solution
(define (equation3 number)
  (= (+ (* 4 (expt number 2))
        (* 6 number)
        2
     )
     462
  )
)



;; Tests
(equation1 10)
(equation2 10)
(equation3 10)

(equation1 12)
(equation2 12)
(equation3 12)

(equation1 14)
(equation2 14)
(equation3 14)