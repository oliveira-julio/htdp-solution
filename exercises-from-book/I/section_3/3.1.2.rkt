;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.1.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
  

;; revenue : number  ->  number
;; to compute the revenue, given ticket-price

;; EXAMPLES
;; the ticket price is 5, then the revenue is 600
;; the ticket price is 4, then the revenue is 1080
;; the ticket price is 3, then the revenue is 1260

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price))
)

;; TESTS
(revenue 5)"should be" 600
(revenue 4)"should be" 1080
(revenue 3)"should be" 1260



;; cost : number  ->  number
;; to compute the costs, given ticket-price

;; EXAMPLES
;; the ticket price is 5, then the cost is 184.8
;; the ticket price is 4, then the cost is 190.8
;; the ticket price is 3, then the cost is 196.8

(define (cost ticket-price)
  (+ 180 (* 0.04 (attendees ticket-price)))
)

;; TESTS
(cost 5) "should be" 184.8
(cost 4) "should be" 190.8
(cost 3) "should be" 196.8



;; profit : number  ->  number
;; to compute the profit as the difference between revenue and costs
;; at some given ticket-price

;; EXAMPLES
;; the ticket price is 5 then the profit is 415.2
;; the ticket price is 4 then the profit is 889.2
;; the ticket price is 3 then the profit is 1063.2

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price))
)

;; TESTS
(profit 5)"should be" 415.2
(profit 4)"should be" 889.2
(profit 3)"should be" 1063.2


;; the best of the three is ticket price equals to 3