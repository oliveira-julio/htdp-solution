;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; speed: number number -> number
;; determines the speed of a rocket, given the accelerates and the time
;; Examples:
;; the accelerates is 0 or  the time is 0, then the speed is 0
;; the accelerates is 1 and the time is 7, then the speed is 7
;; the accelerates is 4 and the time is 5, then the speed is 20
(define (speed accelerates time)
  (* accelerates time)
)


;; height-from-speed: number number -> number
;; determines the of a rocket, given the speed and the time
;; Examples:
;; the speed is 0 and the time is 0, then the height is 0
;; the speed is 7 and the time is 7, then the height is 24.5
;; the speed is 20 and the time is 5, then the height is 50
(define (height-from-speed speedRocket time)
  (* 1/2 speedRocket time)
)


;; height: number number -> number
;; determines the height, given the accelerates and the time
;; Examples:
;; the accelerates is 0 or  the time is 0, then the height is 0
;; the accelerates is 1 and the time is 7, then the height is 24.5
;; the accelerates is 4 and the time is 5, then the height is 50
(define (height accelerates time)
  (height-from-speed (speed accelerates time) time)
)


;; Tests

(speed 0 0) "should be" 0
(speed 1 7) "should be" 7
(speed 4 5) "should be" 20

(height-from-speed 0  0) "should be" 0
(height-from-speed 7  7) "should be" 24.5
(height-from-speed 20 5) "should be" 50

(height 0 0) "should be" 0
(height 1 7) "should be" 24.5
(height 4 5) "should be" 50