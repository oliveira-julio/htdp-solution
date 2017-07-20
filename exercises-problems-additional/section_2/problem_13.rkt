;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_13) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 13:
;; Develop the function, winning-average.
;; The function consumes two numbers representing the number of wins and losses and
;; produces the winning average where 1000 would be equivalent to 100 percent.

;; winning-average: number number -> number
;; determines the winning average using 1000 like equivalent to 100 percent,
;; given the number of wins and the number of losses.

;; EXAMPLES
;; the wins is 0 and the losses is 1, then the winning average is 0
;; the wins is 7 and the losses is 7, then the winning average is 500
;; the wins is 3 and the losses is 1, then the winning average is 750

(define (winning-average wins losses)
  (* 1000 (/ wins (+ wins losses) ) )
)

;; TESTS
(winning-average 0 1) "should be" 0
(winning-average 7 7) "should be" 500
(winning-average 3 1) "should be" 750