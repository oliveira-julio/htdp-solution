;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.2.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; area-of-triangle : number number -> number 
;; calculates the area of a triangle, given its base and height.

;; EXAMPLES
;; base is 2  and height is 2, then area-of-triangle is 2
;; base is 10 and height is 5, then area-of-triangle is 25
;; base is 7  and height is 9, then area-of-triangle is 31.5

(define (area-of-triangle length height)
  (/ (* length height) 2))

;; EXAMPLES TUNED INTO TEST
(area-of-triangle 2  2)"should be" 2
(area-of-triangle 10 5)"should be" 25
(area-of-triangle 7  9)"should be" 31.5