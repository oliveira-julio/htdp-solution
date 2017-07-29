;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 2:
;; Develop a function that takes the radii of two spheres, one of which is inside the other,
;; and computes the volume of the larger sphere not occupied by the smaller sphere.
;; The volume of a sphere is (4 * pi * r3)/3.


;; cube: number -> number
;; determines the cube of a number, given the number
;; Examples:
;; the number is 1 , then the cube is 1
;; the number is 2 , then the cube is 8
;; the number is 10, then the cube is 1000
(define (cube number)
  (expt number 3)
)

;; volume-sphere: number -> number
;; determines the volume of a sphere, given the radius
;; Examples:
;; the radius is 0, then the volume is 0
;; the radius is 1, then the volume is (/ (* 4 pi) 3)
;; the radius is 3, then the volume is (* 4 pi 9)
(define (volume-sphere radius)
  (/ (* 4 pi (cube radius) ) 3)
)


;; volume-shell: number number -> number
;; determines the diferrence between the volume of two spheres, given the radius of the two
;; Examples:
;; the first radius is 1 and the second is 0, then the difference is (/ (* 4 pi) 3)
;; the first radius is 3 and the second is 1, then the difference is (- (* 4 pi 9) (/ (* 4 pi) 3) )
;; the first radius is 3 and the second is 3, then the difference is 0
(define (volume-shell firstRadius secondRadius)
  (- (volume-sphere firstRadius) (volume-sphere secondRadius) )
)


;; Tests

(cube 1 ) "should be" 1
(cube 2 ) "should be" 8
(cube 10) "should be" 1000

(volume-sphere 0) "should be" 0
(volume-sphere 1) "should be" (/ (* 4 pi) 3)
(volume-sphere 3) "should be" (* 4 pi 9)

(volume-shell 1 0) "should be" (/ (* 4 pi) 3)
(volume-shell 3 1) "should be" (- (* 4 pi 9) (/ (* 4 pi) 3) )
(volume-shell 3 3) "should be" 0