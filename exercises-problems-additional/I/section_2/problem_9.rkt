;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname problem_9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; Problem 9:
;; Drop a rubber ball from a height h. Each time it hits the ground,
;; the ball bounces up to 2/3 of the height it dropped.
;; Develop a function that computes how far the ball travels by the time it hits the ground for the third time?


;; height-total-travelled-after-third-time: number -> number
;; determines the total height which a ball travelled after the third time it hits the ground,
;; given the height inicial which the ball has dropped.

;; EXAMPLES
;; the initial height is 9 , the height bounce after the third time is 29
;; the initial height is 27, the height bounce after the third time is 87
;; the initial height is 10, the height bounce after the third time is (/ 290 9)

(define (height-total-travelled-after-third-time heightInitial)
  (+ heightInitial (* 2 2/3 heightInitial) (* 2 4/9 heightInitial))
)

;; TESTS
(height-total-travelled-after-third-time 9)  "should be" 29
(height-total-travelled-after-third-time 27) "should be" 87
(height-total-travelled-after-third-time 10) "should be" (/ 290 9)

