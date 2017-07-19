;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 3:
;; Develop a function that computes how long after their deparature two trains will meet.
;; Assume that the trains travel between two points, along a single section of track, going in opposite directions.
;; The function should consume the trains' speeds and the starting distance between the trains. Speed is distance/time.


;; time-to-the-meeting: number number number -> number
;; determines after how much time two trains in opposite directions will meet,
;; given the speed of first train in meters/second, the speed of second train in meters/second,
;; and the distance between the trains in meters.

;; EXAMPLES
;; the first speed is 10, the second speed is 10, and the distance between the trains is 20.
;;    then they will meet after 1 second.

;; the first speed is 1, the second speed is 0, and the distance between the trains is 60.
;;    then they will meet after 60 second.

;; the first speed is 0, the second speed is 100, and the distance between the trains is 4.
;;    then they will meet after 0.04 second.

(define (time-to-the-meeting speedFirstTrain speedSecondTrain distanceBetweenTrains)
  (/ distanceBetweenTrains (+ speedFirstTrain speedSecondTrain))
)

;; TESTS
(time-to-the-meeting 10 10 20)"should be" 1
(time-to-the-meeting 1 0 60)"should be" 60
(time-to-the-meeting 0 100 4)"should be" 0.04