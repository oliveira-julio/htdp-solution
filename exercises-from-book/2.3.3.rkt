;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.3.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; total-profit : number -> number
;; It consumes the number of attendees (of a show) and
;; produces how much income the attendees produce.
;; Each customer pays $5 per ticket.
;; Every performance costs the theater $20, plus $.50 per attendee.
;; the income without the costs performance is equal to $4.5 per attendee.
;; because 5 (customer pays) - 0.5 (costs per attendee) is 4.5

;; EXAMPLES
;; if the number of attendees is 10, then the income is 25.
;; if the number of attendees is 3 , then the income is -6.5
;; if the number of attendees is 15, then the income is 47.5

(define (total-profit customers)
  (- (* 4.50 customers)
     20
  )
)

(total-profit 10)"should be"25
(total-profit 3)"should be"-6.5
(total-profit 15)"should be"47.5