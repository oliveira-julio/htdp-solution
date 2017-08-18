;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; interest-rate: number -> number
;; Determines the interest rate for the given amount >= 0
;; Examples:
;; the amount is 1000, then the rate is 0.040
;; the amount is 5000, then the rate is 0.045
;; the amount is 8000, then the rate is 0.050
(define (interest-rate number)
  (cond
    [(<= number 1000) 0.040]
    [(<= number 5000) 0.045]
    [(>  number 5000) 0.050])
)


;; interest: number -> number
;; Determines the interest for the given amount >=0
(define (interest number)
  (* number
     (interest-rate number))
)


;; Tests
(= (interest-rate 1000) 0.040)
(= (interest-rate 5000) 0.045)
(= (interest-rate 8000) 0.050)


(= (interest 1000) 40 )
(= (interest 5000) 225)
(= (interest 8000) 400)