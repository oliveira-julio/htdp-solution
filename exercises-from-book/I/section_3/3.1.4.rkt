;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.1.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; How to design a program 
(define (profit-right-side ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (revenue ticket-price)
  (*  (attendees ticket-price) ticket-price))

(define (cost ticket-price)
  (* 1.5 (attendees ticket-price)))

(define (attendees ticket-price)
  (+ 120
     (* (/ 15 .10) (- 5.00 ticket-price))))


;; How not to design a program 
(define (profit-left-side price)
  (- (* (+ 120
	   (* (/ 15 .10)
	      (- 5.00 price)))
	price)
     (* 1.5
	   (+ 120
	      (* (/ 15 .10)
		 (- 5.00 price))))))



(profit-right-side 3) "should be" (profit-left-side 3)
(profit-right-side 4) "should be" (profit-left-side 4)
(profit-right-side 5) "should be" (profit-left-side 5)