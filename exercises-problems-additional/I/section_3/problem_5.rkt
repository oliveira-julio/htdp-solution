;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))



(define yearly-rate 0.08)
(define years-to-pay 30)
(define extra-fees 1000)


;; interest: number -> number
;; Determines the value of a principal after a rate is applied, given the principal
;; Examples:
;; the principal is 0   , then the value is 0
;; the principal is 5000, then the value is 12000
;; the principal is 8000, then the value is 19200
(define (interest number)
  (* yearly-rate years-to-pay number)
)


;; principal: number number -> number
;; determines the principal, given the selling price and the down payment
;; Examples:
;; the sell is 10000 and the down is 10000, then the principal is 0
;; the sell is 10000 and the down is 5000,  then the principal is 5000
;; the sell is 15000 and the down is 7000,  then the principal is 8000
(define (principal sell down)
  (- sell down)
)


;; total-cost: number number -> number
;; determines the total cost to pay, given the selling price and the down payment
;; Examples:
;; the sell is 10000 and the down is 10000, then the total to pay is 11000
;; the sell is 10000 and the down is 5000 , then the total is 23000
;; the sell is 15000 and the down is 7000 , then the total is 35200
(define (total-cost sell down)
  (+ sell extra-fees (interest (principal sell down ) ) )
)



;; TESTS

(interest 0   ) "should be" 0
(interest 5000) "should be" 12000
(interest 8000) "should be" 19200

(principal 10000 10000) "should be" 0
(principal 10000 5000 ) "should be" 5000
(principal 15000 7000 ) "should be" 8000

(total-cost 10000 10000) "should be" 11000
(total-cost 10000 5000 ) "should be" 23000
(total-cost 15000 7000 ) "should be" 35200