;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.1.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; attendees : number  ->  number
;; to compute the number of attendees, given ticket-price

;; EXAMPLES
;; the ticket price is 5, then the number of attendees is 120
;; the ticket price is 4, then the number of attendees is 270
;; the ticket price is 3, then the number of attendees is 420

(define (attendees ticket-price)
  (+ 120 (* (- 5 ticket-price) 150 ))
)

;; TESTS
(attendees 5) "should be" 120
(attendees 4) "should be" 270
(attendees 3) "should be" 420
