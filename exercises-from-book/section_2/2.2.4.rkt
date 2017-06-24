;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.2.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; convert3 : number number number -> number
;; reverse digits of a number with 3 digits

;; EXAMPLES
;; original number is 123, the reverse is 321
;; original number is 122, the reverse is 221
;; original number is 111, the reverse is 111

(define (convert3 ones tens hundreds)
  (+ (* hundreds 100)
     (* tens 10)
     ones
  )
)

;; EXAMPLES TESTS
(convert3 1 2 3)"should be" 321
(convert3 1 2 2)"should be" 221
(convert3 1 1 1)"should be" 111