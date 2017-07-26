;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; square: number -> number
;; determines the square of a number, given the number
;; Examples:
;; the number is 0, then the square is 0
;; the number is 1, then the square is 1
;; the number is 5, then the square is 25
(define (square number)
  (expt number 2)
)


;; area-of-disk: number -> number
;; determines the area of a disk, given the radius.
;; Examples:
;; the radius is 0, then the area is 0
;; the radius is 1, then the area is #i3.141592653589793
;; the radius is 5, then the area is #i78.53981633974483
(define (area-of-disk radius)
  (* pi (square radius))
)


;; volume-cylinder: number number -> number
;; determines the volume of a cylinder, given the radius of base and the height.
;; the radius is 0 or  the height is 0,   the volume is 0
;; the radius is 1 and the height is 200, the volume is #i628.3185307179587
;; the radius is 5 and the height is 10,  the volume is #i785.3981633974483
(define (volume-cylinder radius height)
  (* height (area-of-disk radius))
)


;; Tests

(square 0) "should be" 0
(square 1) "should be" 1
(square 5) "should be" 25

(area-of-disk 0) "should be" 0
(area-of-disk 1) "should be" pi
(area-of-disk 5) "should be" (* 25 pi)

(volume-cylinder 0 0  ) "should be" 0
(volume-cylinder 1 200) "should be" (* pi 200)
(volume-cylinder 5 10 ) "should be" (* 25 pi 10)

