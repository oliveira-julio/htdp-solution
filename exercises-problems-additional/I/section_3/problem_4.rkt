;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; momentum: number number -> number
;; determines the momentum of a object, given the mass and the velocity
;; Examples:
;; the mass is 1 and the velocity is 0, then the momentum is 0
;; the mass is 1 and the velocity is 5, then the momentum is 5
;; the mass is 7 and the velocity is 6, then the momentum is 42
(define (momentum mass velocity)
  (* mass velocity)
)


;; collision-speed: number number number number -> number
;; determines the resulting of collision of two object, given the mass and velocity of the first and the second.
;; Examples:
;; the first mass is 1 and the velocity is 5, and the second mass is 1 and the velocity is 0,
;;    then the collision speed is 5
;; the first mass is 7 and the velocity is 6, and the second mass is 1 and the velocity is 5,
;;    then the collision speed is 5.25
;; the first mass is 3 and the velocity is 4, and the second mass is 3 and the velocity is -4,
;;    then the collision speed is 0
(define (collision-speed firstMass firstVelocity secondMass secondVelocity)
  (/ (+ (momentum firstMass firstVelocity)
        (momentum secondMass secondVelocity))
     (+ firstMass secondMass)
  )
)



;; Tests
(momentum 1 0) "should be" 0
(momentum 1 5) "should be" 5
(momentum 7 6) "should be" 42

(collision-speed 1 5 1 0 ) "should be" 2.5
(collision-speed 7 6 1 5 ) "should be" 5.875
(collision-speed 3 4 3 -4) "should be" 0