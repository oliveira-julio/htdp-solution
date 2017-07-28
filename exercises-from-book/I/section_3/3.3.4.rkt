;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


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


;; area-of-ring: number number -> number
;; determines the area of a ring, given the the outer and inner radius
;; the outer is 1  and the inner is 0, then the area is #i3.141592653589793
;; the outer is 2  and the inner is 1, then the area is #i9.42477796076938
;; the outer is 10 and the inner is 5, then the area is #i235.61944901923448
(define (area-of-ring outer inner)
  (- (area-of-disk outer) (area-of-disk inner))
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


;; area-of-pipe: number number number -> number
;; determines the area of a pipe, given the outer radius, inner radius and the height
;; Examples:
;; the outer is 1, the inner is 0 and the height is 0, then the area is #i6.283185307179586
;; the outer is 2, the inner is 1 and the heigth is 1, then the area is #i37.69911184307752
;; the outer is 10, the inner is 5, and the heigth is 10, then the area is #i1413.716694115407
(define (area-of-pipe outer inner height)
  (+ (* (area-of-ring outer inner) 2)
     (area-of-cylinder-side outer height)
     (area-of-cylinder-side inner height))
)


;; area-of-pipe-single: number number number -> number
;; without auxiliary function determines the area of a pipe, given the outer radius, inner radius and the height
;; Examples:
;; The same as area-of-pipe
(define (area-of-pipe-single outer inner height)
  (* 2
     pi
     (+
       (- (expt outer 2) (expt inner 2))
       (* outer height)
       (* inner height)))
)


;; Tests

(square 0) "should be" 0
(square 1) "should be" 1
(square 5) "should be" 25

(area-of-disk 0) "should be" 0
(area-of-disk 1) "should be" (* 1  pi)
(area-of-disk 5) "should be" (* 25 pi)

(area-of-ring 1 0 ) "should be" pi
(area-of-ring 2 1 ) "should be" (* 3  pi)
(area-of-ring 10 5) "should be" (* 75 pi)

(circumference-of-disk 0) "should be" 0
(circumference-of-disk 1) "should be" (* 2 pi 1)
(circumference-of-disk 5) "should be" (* 2 pi 5)

(area-of-cylinder-side 0 0 ) "should be" 0
(area-of-cylinder-side 1 1 ) "should be" (* 2 pi 1 1 )
(area-of-cylinder-side 5 10) "should be" (* 2 pi 5 10)

(area-of-pipe 1  0 0 ) "should be" #i6.283185307179586
(area-of-pipe 2  1 1 ) "should be" #i37.69911184307752
(area-of-pipe 10 5 10) "should be" #i1413.716694115407

(area-of-pipe-single 1  0 0 ) "should be" #i6.283185307179586
(area-of-pipe-single 2  1 1 ) "should be" #i37.69911184307752
(area-of-pipe-single 10 5 10) "should be" #i1413.716694115407