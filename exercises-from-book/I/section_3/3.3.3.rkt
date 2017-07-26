;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


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


;; circumference-of-disk: number -> number
;; determines the length of a disk, given the radius.
;; Examples:
;; the radius is 0, then the length is 0
;; the radius is 1, then the length is #i6.283185307179586
;; the radius is 5, then the length is #i31.41592653589793
(define (circumference-of-disk radius)
  (* 2 pi radius)
)


;; area-of-cylinder-side: number number -> number
;; determines the area of a cylinder, given the radius of base and the height
;; Examples:
;; the radius or the height is 0,     then the area of side is 0
;; the radius 1 and the height is 1,  then the area of side is #i6.283185307179586
;; the radius 5 and the height is 10, then the area of side is #i314.1592653589793
(define (area-of-cylinder-side radius height)
  (* (circumference-of-disk radius) height)
)


;; area-of-cylinder: number number -> number
;; determines the area total of a cylinder, given the radius and the height
;; Examples:
;; the radius    or the height is 0,  then the area total is 0
;; the radius 1 and the height is 1,  then the area total is #i12.566370614359172
;; the radius 5 and the height is 10, then the area total is #i471.23889803846896
(define (area-of-cylinder radius height)
  (+ (* 2 (area-of-disk radius))
     (area-of-cylinder-side radius height)
  )
)


;; Tests

(square 0) "should be" 0
(square 1) "should be" 1
(square 5) "should be" 25

(area-of-disk 0) "should be" 0
(area-of-disk 1) "should be" (* 1 pi)
(area-of-disk 5) "should be" (* 25 pi)

(circumference-of-disk 0) "should be" 0
(circumference-of-disk 1) "should be" (* 2 pi 1)
(circumference-of-disk 5) "should be" (* 2 pi 5)

(area-of-cylinder-side 0 0 ) "should be" 0
(area-of-cylinder-side 1 1 ) "should be" (* 2 pi 1 1 )
(area-of-cylinder-side 5 10) "should be" (* 2 pi 5 10)

(area-of-cylinder 0 0 ) "should be" 0
(area-of-cylinder 1 1 ) "should be" (+ (* 2 (area-of-disk 1)) (area-of-cylinder-side 1 1 ))
(area-of-cylinder 5 10) "should be" (+ (* 2 (area-of-disk 5)) (area-of-cylinder-side 5 10))
