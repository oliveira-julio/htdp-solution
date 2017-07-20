;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 8:
;; Develop a function that when given the area of a square will calculate its perimeter.

;; perimeter-of-square: number -> number
;; determines the perimeter of a square, given the area of the square

;; EXAMPLES
;; the area is 16, then the perimeter is 16
;; the area is 1, then the perimeter is 4
;; the area is 20, then the perimeter is (* 4 (sqrt 20))

(define (perimeter-of-square areaSquare)
  (* 4 (sqrt areaSquare))
)

;; TESTS
(perimeter-of-square 16) "should be" 16
(perimeter-of-square 1) "should be" 4
(perimeter-of-square 20) "should be" (* 4 (sqrt 20))
