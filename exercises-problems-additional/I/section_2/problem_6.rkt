;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 6:
;; Develop a function that computes the area of a regular polygon given the length of one side and the number of sides.
;; If n is the number of sides and s is the length of a side, the area of a regular polygon is equal to 1/4 * n * s2 * 1/(tan PI/n).


;; area-of-regular-polygon: number number -> number
;; determines the area of a regular polygon, given the length of side and the number of sides.

;; EXAMPLES
;; the length of side is 4 and the number of sides is 3, then the area of polygon is (* 4  (sqrt 3))
;; the length of side is 4 and the number of sides is 4, then the area of polygon is 16
;; the length of side is 4 and the number of sides is 6, then the area of polygon is (* 24 (sqrt 3))
(define (area-of-regular-polygon length numberOfSides)
  (* 1/4
     numberOfSides
     (expt length 2)
     (/ 1
        (tan (/ pi numberOfSides)
        )
     )
  )
)

;; TESTS
(area-of-regular-polygon 4 3) "should be" (* 4 (sqrt 3))
(area-of-regular-polygon 4 4) "should be" 16
(area-of-regular-polygon 4 6) "should be" (* 24 (sqrt 3))