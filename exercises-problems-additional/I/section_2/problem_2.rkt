;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 2:
;; Develop a function that computes the distance a boat travels across a river,
;; given the width of the river, the boat's speed perpendicular to the river,
;; and the river's speed. Speed is distance/time,
;; and the Pythagorean theorem is c² = a² + b².


;; pythagorean-theorem : number number -> number
;; determine a fundamental relation among the three sides of a right triangle,
;; the square of the hypotenuse(h) is equal to the sum of squares of the others sides(a,b).

;; EXAMPLES
;; a = 3 and b = 4, h = 5 .
;; a = 2 and b = 2, h = (sqrt 8)
;; a = 8 and b = 6, h = 10

(define (pythagorean-theorem sideA sideB)
  (sqrt (+ (expt sideA 2) (expt sideB 2) ) )
)

;; TESTS
(pythagorean-theorem 3 4) "should be" 5
(pythagorean-theorem 2 2) "should be" (sqrt 8)
(pythagorean-theorem 8 6) "should be" 10


;; crossing-time : number number -> number
;; determines how many time a boat takes to cross a river in seconds,
;; given the speed of boat perpendicular to river in meters/seconds, and the width of river in meters.

;; EXAMPLES:
;; given  and width 100 the speed 5 , the crossing-time is 20  .
;; given  and width 7   the speed 1 , the crossing-time is 7   .
;; given  and width 2   the speed 10, the crossing-time is 0.2 .

(define (crossing-time widthRiver speedBoat)
  (/ widthRiver speedBoat)
)

;; TESTS
(crossing-time 60 3) "should be" 20
(crossing-time 7 1) "should be" 7
(crossing-time 2 10) "should be" 0.2



;; displacement-horizontal : number number -> number
;; determines how much a boat has moved horizontally,
;; given the crossing time in seconds, and the river speed in meters/seconds.

;; EXAMPLES
;; crossing time is 20  and river speed is 1,  the displacement-horizontal is 20 .
;; crossing time is 7   and river speed is 5,  the displacement-horizontal is 35 .
;; crossing time is 0.2 and river speed is 20, the displacement-horizontal is 4  .

(define (displacement-horizontal crossingTime speedRiver)
  (* crossingTime speedRiver)
)

;; TESTS
(displacement-horizontal 20 4) "should be" 80
(displacement-horizontal 7 5 ) "should be" 35
;; composition
(displacement-horizontal (crossing-time 2 10) 20 ) "should be" 4



;; distance-travelled-in-crossing : number number number -> number
;; determines the distance travelled by a boat to cross a river,
;; given the width of river in meters, the boat speed perpendicular to the river in meters/seconds,
;; and the river's speed in meters/seconds.

;; EXAMPLES
;; width river is 60, the boat speed is 3, and the river speed  is 4,.
;;   the crossing time is 20, the displacement horizontal is 80,
;;       the distance travelled is 100.

;; width river is 7, the boat speed is 1, and the river speed  is 5,.
;;   the crossing time is 7, the displacement horizontal is 35,
;;       the distance travelled is (sqrt 1274).

;; width river is 2, the boat speed is 10, and the river speed  is 20,.
;;   the crossing time is 0.2, the displacement horizontal is 4,
;;       the distance travelled is (sqrt 20).

(define (distance-travelled-in-crossing widthRiver speedBoat speedRiver)
  (pythagorean-theorem
   widthRiver
   (displacement-horizontal (crossing-time widthRiver speedBoat) speedRiver )
  )
)

;; TESTS

(distance-travelled-in-crossing 60 3 4) "should be" 100
(distance-travelled-in-crossing 7 1 5) "should be" (sqrt 1274)
(distance-travelled-in-crossing 2 10 20) "should be" (sqrt 20)