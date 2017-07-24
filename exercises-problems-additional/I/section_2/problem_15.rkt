;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_15) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 15:
;; Ms. Sis Y. Fuss wants to push a rock up a hill. The distance is d yards.
;; In one minute, she pushes the rock 30 yards, but then it slides down 4 yards.
;; When she has reached d yards, it won't slide down anymore. How many (entire) minutes will it take her?


;; minutes-pushing: number -> number
;; determines how many time Ms. Sis Y. Fuss takes to push a rock up a hill,
;; given the distance is yards.

;; EXAMPLES
;; the distance is 5 yards, then she takes 1 minute.
;; the distance is 26 yards, then she takes 1 minute.
;; the distance is 100 yards, then she takes 4 minutes.

(define (minutes-pushing distance)
  (ceiling (/ distance 26) )
)

;; TESTS
(minutes-pushing 5) "should be" 1
(minutes-pushing 26) "should be" 1
(minutes-pushing 100) "should be" 4
