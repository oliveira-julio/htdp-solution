;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; area-of-rectangle : number number -> number
;; determines area of rectangle given length and width.

;; EXAMPLES:
;; given length = 10 and width = 10, the area of rectangle is 100
;; given length = 1  and width = 5,  the area of rectangle is 5
;; given length = 17 and width = 0,  the area of rectangle is 0

(define (area-of-rectangle length width)
  (* length width)
)

;; EXAMPLES TESTS
(area-of-rectangle 10 10)"should be" 100
(area-of-rectangle 1  5 )"should be" 5
(area-of-rectangle 17 0 )"should be" 0